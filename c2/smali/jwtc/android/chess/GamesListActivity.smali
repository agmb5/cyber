.class public Ljwtc/android/chess/GamesListActivity;
.super Landroid/app/ListActivity;
.source "GamesListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;
    }
.end annotation


# instance fields
.field _adapter:Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;

.field _editFilter:Landroid/widget/EditText;

.field _listGames:Landroid/widget/ListView;

.field _sortBy:Ljava/lang/String;

.field _sortOrder:Ljava/lang/String;

.field _viewSortBlack:Landroid/view/View;

.field _viewSortDate:Landroid/view/View;

.field _viewSortEvent:Landroid/view/View;

.field _viewSortId:Landroid/view/View;

.field _viewSortRating:Landroid/view/View;

.field _viewSortWhite:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/GamesListActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljwtc/android/chess/GamesListActivity;->flipSortOrder()V

    return-void
.end method

.method static synthetic access$100(Ljwtc/android/chess/GamesListActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljwtc/android/chess/GamesListActivity;->doFilterSort()V

    return-void
.end method

.method static synthetic access$200(Ljwtc/android/chess/GamesListActivity;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Ljwtc/android/chess/GamesListActivity;->convText(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convText(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 206
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    const v0, 0x7f08017b

    if-eq p1, v0, :cond_0

    return-object p2

    .line 208
    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy.MM.dd"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 210
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 211
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private doFilterSort()V
    .locals 8

    .line 192
    iget-object v0, p0, Ljwtc/android/chess/GamesListActivity;->_editFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "white LIKE(\'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\') OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "black"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " LIKE(\'%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/GamesListActivity;->_sortOrder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "runQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Ljwtc/android/chess/GamesListActivity;->_adapter:Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;

    sget-object v3, Ljwtc/android/chess/helpers/MyPGNProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Ljwtc/chess/PGNColumns;->COLUMNS:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljwtc/android/chess/GamesListActivity;->_sortBy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljwtc/android/chess/GamesListActivity;->_sortOrder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ljwtc/android/chess/GamesListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private flipSortOrder()V
    .locals 2

    .line 202
    iget-object v0, p0, Ljwtc/android/chess/GamesListActivity;->_sortOrder:Ljava/lang/String;

    const-string v1, "DESC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "ASC"

    :cond_0
    iput-object v1, p0, Ljwtc/android/chess/GamesListActivity;->_sortOrder:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0023

    .line 45
    invoke-virtual {p0, p1}, Ljwtc/android/chess/GamesListActivity;->setContentView(I)V

    const-string p1, "date"

    .line 47
    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_sortBy:Ljava/lang/String;

    const-string p1, "ASC"

    .line 48
    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_sortOrder:Ljava/lang/String;

    const p1, 0x7f080160

    .line 50
    invoke-virtual {p0, p1}, Ljwtc/android/chess/GamesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_viewSortRating:Landroid/view/View;

    .line 51
    new-instance v0, Ljwtc/android/chess/GamesListActivity$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/GamesListActivity$1;-><init>(Ljwtc/android/chess/GamesListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080164

    .line 61
    invoke-virtual {p0, p1}, Ljwtc/android/chess/GamesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_viewSortWhite:Landroid/view/View;

    .line 62
    new-instance v0, Ljwtc/android/chess/GamesListActivity$2;

    invoke-direct {v0, p0}, Ljwtc/android/chess/GamesListActivity$2;-><init>(Ljwtc/android/chess/GamesListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080165

    .line 71
    invoke-virtual {p0, p1}, Ljwtc/android/chess/GamesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_viewSortBlack:Landroid/view/View;

    .line 72
    new-instance v0, Ljwtc/android/chess/GamesListActivity$3;

    invoke-direct {v0, p0}, Ljwtc/android/chess/GamesListActivity$3;-><init>(Ljwtc/android/chess/GamesListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080163

    .line 81
    invoke-virtual {p0, p1}, Ljwtc/android/chess/GamesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_viewSortId:Landroid/view/View;

    .line 82
    new-instance v0, Ljwtc/android/chess/GamesListActivity$4;

    invoke-direct {v0, p0}, Ljwtc/android/chess/GamesListActivity$4;-><init>(Ljwtc/android/chess/GamesListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080162

    .line 91
    invoke-virtual {p0, p1}, Ljwtc/android/chess/GamesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_viewSortEvent:Landroid/view/View;

    .line 92
    new-instance v0, Ljwtc/android/chess/GamesListActivity$5;

    invoke-direct {v0, p0}, Ljwtc/android/chess/GamesListActivity$5;-><init>(Ljwtc/android/chess/GamesListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080161

    .line 101
    invoke-virtual {p0, p1}, Ljwtc/android/chess/GamesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_viewSortDate:Landroid/view/View;

    .line 102
    new-instance v0, Ljwtc/android/chess/GamesListActivity$6;

    invoke-direct {v0, p0}, Ljwtc/android/chess/GamesListActivity$6;-><init>(Ljwtc/android/chess/GamesListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080045

    .line 112
    invoke-virtual {p0, p1}, Ljwtc/android/chess/GamesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_editFilter:Landroid/widget/EditText;

    .line 113
    new-instance v0, Ljwtc/android/chess/GamesListActivity$7;

    invoke-direct {v0, p0}, Ljwtc/android/chess/GamesListActivity$7;-><init>(Ljwtc/android/chess/GamesListActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    sget-object v2, Ljwtc/android/chess/helpers/MyPGNProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Ljwtc/chess/PGNColumns;->COLUMNS:[Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ljwtc/android/chess/GamesListActivity;->_sortBy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljwtc/android/chess/GamesListActivity;->_sortOrder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljwtc/android/chess/GamesListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 134
    new-instance p1, Ljwtc/android/chess/GamesListActivity$8;

    const-string v0, "_id"

    const-string v1, "white"

    const-string v2, "black"

    const-string v3, "date"

    const-string v4, "event"

    const-string v5, "rating"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x6

    new-array v13, v0, [I

    fill-array-data v13, :array_0

    const v10, 0x7f0b0021

    move-object v7, p1

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v7 .. v13}, Ljwtc/android/chess/GamesListActivity$8;-><init>(Ljwtc/android/chess/GamesListActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_adapter:Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;

    .line 164
    new-instance v0, Ljwtc/android/chess/GamesListActivity$9;

    invoke-direct {v0, p0}, Ljwtc/android/chess/GamesListActivity$9;-><init>(Ljwtc/android/chess/GamesListActivity;)V

    invoke-virtual {p1, v0}, Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 181
    invoke-virtual {p0}, Ljwtc/android/chess/GamesListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_listGames:Landroid/widget/ListView;

    .line 183
    iget-object v0, p0, Ljwtc/android/chess/GamesListActivity;->_adapter:Ljwtc/android/chess/GamesListActivity$AlternatingSimpleCursorAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    iget-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_listGames:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    iget-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_listGames:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f08017e
        0x7f080180
        0x7f080181
        0x7f08017b
        0x7f08017c
        0x7f080149
    .end array-data
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 218
    iget-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_listGames:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    const-string p2, "_id"

    .line 219
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 221
    sget-object p3, Ljwtc/android/chess/helpers/MyPGNProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 222
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.EDIT"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 227
    invoke-virtual {p0, p1, p2}, Ljwtc/android/chess/GamesListActivity;->setResult(ILandroid/content/Intent;)V

    .line 228
    invoke-virtual {p0}, Ljwtc/android/chess/GamesListActivity;->finish()V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 233
    iget-object p1, p0, Ljwtc/android/chess/GamesListActivity;->_listGames:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    const-string p2, "_id"

    .line 234
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 236
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p4, 0x7f0e01c7

    .line 237
    invoke-virtual {p0, p4}, Ljwtc/android/chess/GamesListActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p4, 0x7f0e003a

    .line 239
    invoke-virtual {p0, p4}, Ljwtc/android/chess/GamesListActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljwtc/android/chess/GamesListActivity$10;

    invoke-direct {p5, p0, p1, p2}, Ljwtc/android/chess/GamesListActivity$10;-><init>(Ljwtc/android/chess/GamesListActivity;J)V

    invoke-virtual {p3, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f0e0035

    .line 249
    invoke-virtual {p0, p1}, Ljwtc/android/chess/GamesListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljwtc/android/chess/GamesListActivity$11;

    invoke-direct {p2, p0}, Ljwtc/android/chess/GamesListActivity$11;-><init>(Ljwtc/android/chess/GamesListActivity;)V

    invoke-virtual {p3, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
