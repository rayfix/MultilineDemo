# MultilineDemo

This projects demostrates how you can have a multiple line UILabel collapse and expand within a UITableView.  It uses dynamic cell sizing and autolayout.  In did select row at index path the key code is below.  It triggers a table view animation and simply toggles the number of lines between 0 and 1 or 1 and 0.  (When you sent numberOfLines to 0 it is a special value that means "any number of lines."

```swift
        tableView.beginUpdates()
        label.numberOfLines = label.numberOfLines == 0 ? 1 : 0
        tableView.endUpdates()
```

I am including the whole project here because there are many small mistakes you can make so that this doesn't work.  (Many newer developers fall back to computing font metrics manually, or hard coded numbers because they assume it cannot be done.
