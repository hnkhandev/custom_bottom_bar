# custom_bottom_bar
A bottom tool bar that can be swiped left or right to expose more tools.

# usage
Create your custom bottom bars with up to four custom bottom bar items.
```
    final middleBar = CustomBottomBar(
      items: <CustomBottomBarItem>[
        CustomBottomBarItem(
          icon: Icon(Icons.home),
          text: Text('Home'),
          onTap: () => print('Home'),
        ),
        CustomBottomBarItem(
          icon: Icon(Icons.search),
          text: Text('Search'),
          onTap: () => print('Search'),
        ),
        CustomBottomBarItem(
          icon: Icon(Icons.people),
          text: Text('People'),
          onTap: () => print('People'),
        ),
      ],
    );
```

Set your custom bottom bar page view in 'bottomNavigationBar:'
```
    bottomNavigationBar: CustomBottomBarPageView(
        leftBar: leftBar,
        middleBar: middleBar,
        rightBar: rightBar,
    ),
```

# demo
![Alt Text](https://i.imgur.com/kw9SrOE.gif)
