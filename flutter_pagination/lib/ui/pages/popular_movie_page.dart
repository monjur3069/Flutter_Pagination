import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../provider/popular_movie_provider.dart';


class PopularMoviePage extends StatefulWidget {
  const PopularMoviePage({Key? key}) : super(key: key);

  @override
  State<PopularMoviePage> createState() => _PopularMoviePageState();
}

class _PopularMoviePageState extends State<PopularMoviePage> {
  late PopularMovieProvider provider;
  bool isFirst = true;

  late ScrollController _scrollController;
  RefreshController _refreshController =
  RefreshController(initialRefresh: false);

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _refreshController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >=
        _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      // Reached the end of the current page, fetch next page data
      provider.getAllData();
    }
  }

  @override
  void didChangeDependencies() async {
    if (isFirst) {
      provider = await Provider.of<PopularMovieProvider>(context);
      provider.getAllData();
      isFirst = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Pagination with provider')),
      ),
      body: Consumer<PopularMovieProvider>(
        builder: (context, provider, _) =>
        provider.hasDataLoaded
            ? SmartRefresher(
          controller: _refreshController,
              enablePullDown: true,
              enablePullUp: false,
              onRefresh: _onRefresh,
              child: ListView.builder(
          controller: _scrollController,
          itemCount:
          provider.popularMovieModel!.results!.length + 1, // +1 for the progress indicator
          itemBuilder: (context, index) {
              if (index < provider.popularMovieModel!.results!.length) {
                return ListTile(
                  title: Text(
                      provider.popularMovieModel!.results![index].title!),
                );
              }else {
                print(index);
                print(provider.popularMovieModel!.results!.length);
                // Show the progress indicator at the bottom
                return index == 160 ? Container():Center(child: CircularProgressIndicator());
              }
          },
        ),
            )
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }

  void _onRefresh() async {
    provider.currentPage = 1;
    await provider.getAllData();
    _refreshController.refreshCompleted();
    if (provider.currentPage == provider.totalPages) {
      _refreshController.loadNoData();
    }
  }
}
