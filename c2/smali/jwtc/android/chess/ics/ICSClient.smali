.class public Ljwtc/android/chess/ics/ICSClient;
.super Ljwtc/android/chess/activities/ChessBoardActivity;
.source "ICSClient.java"

# interfaces
.implements Ljwtc/android/chess/ics/ICSListener;
.implements Ljwtc/android/chess/helpers/ResultDialogListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Ljwtc/android/chess/services/ClockListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwtc/android/chess/ics/ICSClient$ComparatorHashRating;,
        Ljwtc/android/chess/ics/ICSClient$ComparatorHashName;
    }
.end annotation


# static fields
.field protected static final DECREASE:I = 0x0

.field public static final REQUEST_CHALLENGE:I = 0x2

.field public static final REQUEST_CONFIRM:I = 0x3

.field public static final REQUEST_LOGIN:I = 0x1

.field public static final REQUEST_MENU:I = 0x4

.field public static final TAG:Ljava/lang/String; = "ICSClient"

.field protected static final VIEW_BOARD:I = 0x2

.field protected static final VIEW_CHALLENGES:I = 0x5

.field protected static final VIEW_CONSOLE:I = 0x8

.field protected static final VIEW_GAMES:I = 0x4

.field protected static final VIEW_LOADING:I = 0x1

.field protected static final VIEW_LOGIN:I = 0x0

.field protected static final VIEW_MENU:I = 0x6

.field protected static final VIEW_PLAYERS:I = 0x3

.field protected static final VIEW_STORED:I = 0x7

.field protected static blackClk:[I

.field protected static whiteClk:[I


# instance fields
.field private PGN:Ljava/lang/StringBuilder;

.field private _FEN:Ljava/lang/String;

.field private _ICSNotifyLifeCycle:Z

.field private _TimeWarning:I

.field private _adapterHandles:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _arrayPasswords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _bAutoSought:Z

.field private _bEndGameDialog:Z

.field private _bICSVolume:Z

.field private _bShowClockPGN:Z

.field private _bTimeWarning:Z

.field private _dlgConfirm:Ljwtc/android/chess/ics/ICSConfirmDlg;

.field protected _dlgMatch:Ljwtc/android/chess/ics/ICSMatchDlg;

.field private _dlgOver:Ljwtc/android/chess/ics/ICSGameOverDlg;

.field private _dlgPlayer:Ljwtc/android/chess/ics/ICSPlayerDlg;

.field private _editBoard:Landroid/widget/EditText;

.field private _editConsole:Landroid/widget/EditText;

.field private _editHandle:Landroid/widget/EditText;

.field private _editPwd:Landroid/widget/EditText;

.field private _gameStartSound:I

.field private _iConsoleCharacterSize:I

.field private _listGames:Landroid/widget/ListView;

.field private _listStored:Landroid/widget/ListView;

.field private _listWelcome:Landroid/widget/ListView;

.field private _matgame:Ljava/util/regex/Matcher;

.field private _notifyON:Z

.field private _ringNotification:Landroid/media/Ringtone;

.field protected _sConsoleEditText:Ljava/lang/String;

.field private _sFile:Ljava/lang/String;

.field private _scrollConsole:Landroid/widget/ScrollView;

.field private _spinnerHandles:Landroid/widget/Spinner;

.field private _tvBoardNum:Landroid/widget/TextView;

.field private _tvClockBottom:Landroid/widget/TextView;

.field private _tvClockTop:Landroid/widget/TextView;

.field private _tvConsole:Landroid/widget/TextView;

.field private _tvLastMove:Landroid/widget/TextView;

.field private _tvMoveNumber:Landroid/widget/TextView;

.field private _tvPlayerBottom:Landroid/widget/TextView;

.field private _tvPlayerBottomRating:Landroid/widget/TextView;

.field private _tvPlayerTop:Landroid/widget/TextView;

.field private _tvPlayerTopRating:Landroid/widget/TextView;

.field private _tvTimePerMove:Landroid/widget/TextView;

.field private adapterChallenges:Landroid/widget/SimpleAdapter;

.field private adapterGames:Landroid/widget/SimpleAdapter;

.field private adapterMenu:Landroid/widget/SimpleAdapter;

.field private adapterPlayers:Landroid/widget/SimpleAdapter;

.field private adapterStored:Landroid/widget/SimpleAdapter;

.field private buttonMenu:Landroid/widget/ImageButton;

.field private examineButtonsLayout:Landroid/widget/LinearLayout;

.field private icsServer:Ljwtc/android/chess/ics/ICSServer;

.field private isPlaying:Z

.field private listChallenges:Landroid/widget/ListView;

.field private listMenu:Landroid/widget/ListView;

.field private listPlayers:Landroid/widget/ListView;

.field private localClockApi:Ljwtc/android/chess/services/LocalClockApi;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mapChallenges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mapGames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mapMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mapPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mapStored:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private playButtonsLayout:Landroid/widget/LinearLayout;

.field private switchTurnMe:Landroid/widget/ViewSwitcher;

.field private switchTurnOpp:Landroid/widget/ViewSwitcher;

.field private textViewTitle:Landroid/widget/TextView;

.field private tz:Ljava/util/TimeZone;

.field private viewAnimatorPlayMode:Landroid/widget/ViewAnimator;

.field private viewAnimatorRoot:Landroid/widget/ViewAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc8

    new-array v1, v0, [I

    .line 110
    sput-object v1, Ljwtc/android/chess/ics/ICSClient;->whiteClk:[I

    new-array v0, v0, [I

    .line 111
    sput-object v0, Ljwtc/android/chess/ics/ICSClient;->blackClk:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    .line 53
    new-instance v0, Ljwtc/android/chess/services/LocalClockApi;

    invoke-direct {v0}, Ljwtc/android/chess/services/LocalClockApi;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->localClockApi:Ljwtc/android/chess/services/LocalClockApi;

    const-string v0, ""

    .line 56
    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_FEN:Ljava/lang/String;

    .line 85
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->tz:Ljava/util/TimeZone;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mapMenu:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mapChallenges:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mapPlayers:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mapGames:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mapStored:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljwtc/android/chess/ics/ICSClient$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSClient$1;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/ics/ICSClient;)Ljwtc/android/chess/ics/ICSServer;
    .locals 0

    .line 47
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    return-object p0
.end method

.method static synthetic access$002(Ljwtc/android/chess/ics/ICSClient;Ljwtc/android/chess/ics/ICSServer;)Ljwtc/android/chess/ics/ICSServer;
    .locals 0

    .line 47
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    return-object p1
.end method

.method static synthetic access$100(Ljwtc/android/chess/ics/ICSClient;)Landroid/widget/EditText;
    .locals 0

    .line 47
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSClient;->_editHandle:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Ljwtc/android/chess/ics/ICSClient;)Landroid/widget/EditText;
    .locals 0

    .line 47
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSClient;->_editPwd:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Ljwtc/android/chess/ics/ICSClient;)Landroid/widget/ScrollView;
    .locals 0

    .line 47
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSClient;->_scrollConsole:Landroid/widget/ScrollView;

    return-object p0
.end method

.method private blackClock(III)I
    .locals 2

    .line 631
    sget-object v0, Ljwtc/android/chess/ics/ICSClient;->blackClk:[I

    add-int/lit8 v1, p2, -0x1

    aget v1, v0, v1

    sub-int/2addr v1, p1

    aput v1, v0, p2

    const/4 p1, 0x1

    if-le p2, p1, :cond_0

    .line 633
    aget p1, v0, p2

    add-int/2addr p1, p3

    aput p1, v0, p2

    .line 636
    :cond_0
    aget p1, v0, p2

    return p1
.end method

.method private confirmShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 684
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgConfirm:Ljwtc/android/chess/ics/ICSConfirmDlg;

    invoke-virtual {v0, p3}, Ljwtc/android/chess/ics/ICSConfirmDlg;->setSendString(Ljava/lang/String;)V

    .line 685
    iget-object p3, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgConfirm:Ljwtc/android/chess/ics/ICSConfirmDlg;

    invoke-virtual {p3, p1, p2}, Ljwtc/android/chess/ics/ICSConfirmDlg;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgConfirm:Ljwtc/android/chess/ics/ICSConfirmDlg;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSConfirmDlg;->show()V

    return-void
.end method

.method private convertSecondsToClock(I)Ljava/lang/String;
    .locals 4

    .line 642
    div-int/lit16 v0, p1, 0xe10

    .line 643
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 644
    rem-int/lit8 p1, p1, 0x3c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 646
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{[%clk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private convertTimeUsedToClock(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 579
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v0, v0, 0x3c

    .line 587
    sget-object v2, Ljwtc/android/chess/ics/ICSClient;->whiteClk:[I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 588
    sget-object v2, Ljwtc/android/chess/ics/ICSClient;->blackClk:[I

    aput v0, v2, v3

    const-string v0, "\\((\\d+):(\\d+)\\)"

    .line 590
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 591
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 593
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 597
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v7, v3

    const/4 v8, 0x2

    .line 598
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    if-eqz v5, :cond_0

    .line 602
    invoke-direct {p0, v7, v6, v1}, Ljwtc/android/chess/ics/ICSClient;->whiteClock(III)I

    move-result v5

    move v7, v6

    const/4 v6, 0x0

    goto :goto_1

    .line 605
    :cond_0
    invoke-direct {p0, v7, v6, v1}, Ljwtc/android/chess/ics/ICSClient;->blackClock(III)I

    move-result v5

    add-int/lit8 v6, v6, 0x1

    move v7, v6

    const/4 v6, 0x1

    .line 610
    :goto_1
    invoke-direct {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->convertSecondsToClock(I)Ljava/lang/String;

    move-result-object v5

    .line 612
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v5, v6

    move v6, v7

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private whiteClock(III)I
    .locals 2

    .line 621
    sget-object v0, Ljwtc/android/chess/ics/ICSClient;->whiteClk:[I

    add-int/lit8 v1, p2, -0x1

    aget v1, v0, v1

    sub-int/2addr v1, p1

    aput v1, v0, p2

    const/4 p1, 0x1

    if-le p2, p1, :cond_0

    .line 623
    aget p1, v0, p2

    add-int/2addr p1, p3

    aput p1, v0, p2

    .line 626
    :cond_0
    aget p1, v0, p2

    return p1
.end method


# virtual methods
.method public OnAbortConfirmed()V
    .locals 1

    const-string v0, "Game aborted by mutual agreement"

    .line 1385
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->gameToast(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1386
    iput-boolean v0, p0, Ljwtc/android/chess/ics/ICSClient;->isPlaying:Z

    return-void
.end method

.method public OnAbortedOrAdjourned()V
    .locals 1

    const-string v0, "Game stopped (aborted or adjourned)"

    .line 1419
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->gameToast(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1420
    iput-boolean v0, p0, Ljwtc/android/chess/ics/ICSClient;->isPlaying:Z

    return-void
.end method

.method public OnBoardUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1295
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->gameApi:Ljwtc/android/chess/services/GameApi;

    check-cast v0, Ljwtc/android/chess/ics/ICSApi;

    .line 1296
    invoke-virtual {v0, p1, p2}, Ljwtc/android/chess/ics/ICSApi;->parseGame(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1298
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setBoardView()V

    .line 1300
    invoke-virtual {v0}, Ljwtc/android/chess/ics/ICSApi;->getViewMode()I

    move-result p1

    .line 1302
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSClient;->playButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1303
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSClient;->examineButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public OnChallenged(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1308
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e01c4

    .line 1309
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opponent"

    .line 1310
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "rating"

    .line 1311
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n  challenges you for a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "minutes"

    .line 1313
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " min.+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "seconds"

    .line 1314
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type"

    .line 1315
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "num"

    .line 1316
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".\nDo you wish to accept?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1310
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0e002b

    .line 1318
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljwtc/android/chess/ics/ICSClient$20;

    invoke-direct {v1, p0}, Ljwtc/android/chess/ics/ICSClient$20;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0e0029

    .line 1325
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljwtc/android/chess/ics/ICSClient$19;

    invoke-direct {v1, p0}, Ljwtc/android/chess/ics/ICSClient$19;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1330
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public OnChatReceived()V
    .locals 0

    return-void
.end method

.method public OnClockTime()V
    .locals 5

    .line 1548
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->gameApi:Ljwtc/android/chess/services/GameApi;

    check-cast v0, Ljwtc/android/chess/ics/ICSApi;

    invoke-virtual {v0}, Ljwtc/android/chess/ics/ICSApi;->getMyTurn()I

    move-result v0

    .line 1549
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_tvClockTop:Landroid/widget/TextView;

    const/4 v2, 0x1

    iget-object v3, p0, Ljwtc/android/chess/ics/ICSClient;->localClockApi:Ljwtc/android/chess/services/LocalClockApi;

    if-ne v0, v2, :cond_0

    invoke-virtual {v3}, Ljwtc/android/chess/services/LocalClockApi;->getBlackRemainingTime()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljwtc/android/chess/services/LocalClockApi;->getWhiteRemainingTime()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_tvClockBottom:Landroid/widget/TextView;

    iget-object v3, p0, Ljwtc/android/chess/ics/ICSClient;->localClockApi:Ljwtc/android/chess/services/LocalClockApi;

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljwtc/android/chess/services/LocalClockApi;->getBlackRemainingTime()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljwtc/android/chess/services/LocalClockApi;->getWhiteRemainingTime()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1552
    iget-boolean v1, p0, Ljwtc/android/chess/ics/ICSClient;->isPlaying:Z

    if-eqz v1, :cond_4

    if-ne v0, v2, :cond_2

    .line 1553
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->localClockApi:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/LocalClockApi;->getWhiteRemaining()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->localClockApi:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/LocalClockApi;->getBlackRemaining()J

    move-result-wide v0

    .line 1554
    :goto_2
    iget v2, p0, Ljwtc/android/chess/ics/ICSClient;->_TimeWarning:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 1555
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_tvClockBottom:Landroid/widget/TextView;

    const/high16 v1, -0x33010000    # -1.3369344E8f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_3

    .line 1557
    :cond_3
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_tvClockBottom:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public OnConsoleOutput(Ljava/lang/String;)V
    .locals 0

    .line 1509
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->addConsoleText(Ljava/lang/String;)V

    return-void
.end method

.method public OnDialogResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "challenge"

    .line 1206
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1208
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    const p1, 0x7f0e01e4

    .line 1209
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->doToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public OnError()V
    .locals 3

    const-string v0, "ICSClient"

    const-string v1, "OnError"

    .line 1268
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e008d

    .line 1270
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e002a

    .line 1271
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljwtc/android/chess/ics/ICSClient$18;

    invoke-direct {v2, p0}, Ljwtc/android/chess/ics/ICSClient$18;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1278
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public OnExaminingGameStarted()V
    .locals 1

    const-string v0, "Examining a game"

    .line 1450
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->globalToast(Ljava/lang/String;)V

    return-void
.end method

.method public OnExaminingGameStopped()V
    .locals 1

    const-string v0, "No longer examining the game"

    .line 1455
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->globalToast(Ljava/lang/String;)V

    return-void
.end method

.method public OnGameEndedResult(I)V
    .locals 2

    .line 1489
    invoke-static {p1}, Ljwtc/android/chess/ics/ICSClient;->chessStateToR(I)I

    move-result p1

    .line 1491
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->highlightedPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1492
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->updateSelectedSquares()V

    .line 1493
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->localClockApi:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/LocalClockApi;->stopClock()V

    .line 1495
    iget-boolean v0, p0, Ljwtc/android/chess/ics/ICSClient;->_bEndGameDialog:Z

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgOver:Ljwtc/android/chess/ics/ICSGameOverDlg;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSServer;->getHandle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->setHandle(Ljava/lang/String;)V

    .line 1497
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgOver:Ljwtc/android/chess/ics/ICSGameOverDlg;

    iget-boolean v1, p0, Ljwtc/android/chess/ics/ICSClient;->isPlaying:Z

    invoke-virtual {v0, v1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->setWasPlaying(Z)V

    .line 1498
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgOver:Ljwtc/android/chess/ics/ICSGameOverDlg;

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->updateGameResultText(Ljava/lang/String;)V

    .line 1499
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgOver:Ljwtc/android/chess/ics/ICSGameOverDlg;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->show()V

    goto :goto_0

    .line 1501
    :cond_0
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->gameToast(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 1504
    iput-boolean p1, p0, Ljwtc/android/chess/ics/ICSClient;->isPlaying:Z

    return-void
.end method

.method public OnGameListResult(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1469
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mapGames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1470
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1471
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->mapGames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1474
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->adapterGames:Landroid/widget/SimpleAdapter;

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 1475
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setGamesView()V

    return-void
.end method

.method public OnGameNumberUpdated(I)V
    .locals 0

    return-void
.end method

.method public OnIllegalMove()V
    .locals 1

    .line 1335
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->rebuildBoard()V

    .line 1336
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->highlightedPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1337
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->updateSelectedSquares()V

    return-void
.end method

.method public OnLoggingIn()V
    .locals 1

    const-string v0, "Logging you in"

    .line 1258
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->doToast(Ljava/lang/String;)V

    return-void
.end method

.method public OnLoginFailed(Ljava/lang/String;)V
    .locals 2

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not log you in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->doToast(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setLoginView()V

    return-void
.end method

.method public OnLoginSuccess()V
    .locals 3

    const-string v0, "style 12"

    .line 1238
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    const-string v0, "-channel 4"

    .line 1239
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    const-string v0, "-channel 53"

    .line 1240
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    const-string v0, "set kibitz 1"

    .line 1241
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    const-string v0, "set gin 0"

    .line 1242
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    .line 1243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set tzone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->tz:Ljava/util/TimeZone;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setMenuView()V

    return-void
.end method

.method public OnObservingGameStarted()V
    .locals 1

    const-string v0, "Observing a game"

    .line 1425
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->globalToast(Ljava/lang/String;)V

    return-void
.end method

.method public OnObservingGameStopped()V
    .locals 1

    const-string v0, "No longer observing the game"

    .line 1430
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->globalToast(Ljava/lang/String;)V

    return-void
.end method

.method public OnOpponentOffersDraw()V
    .locals 3

    const v0, 0x7f0e01d8

    .line 1375
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e00bd

    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "draw"

    invoke-direct {p0, v0, v1, v2}, Ljwtc/android/chess/ics/ICSClient;->confirmShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnOpponentRequestsAbort()V
    .locals 3

    const v0, 0x7f0e01d6

    .line 1365
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e00bb

    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "abort"

    invoke-direct {p0, v0, v1, v2}, Ljwtc/android/chess/ics/ICSClient;->confirmShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnOpponentRequestsAdjourn()V
    .locals 3

    const v0, 0x7f0e01d7

    .line 1370
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e00bc

    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adjourn"

    invoke-direct {p0, v0, v1, v2}, Ljwtc/android/chess/ics/ICSClient;->confirmShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnOpponentRequestsTakeBack()V
    .locals 3

    const v0, 0x7f0e01d9

    .line 1380
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e00be

    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accept"

    invoke-direct {p0, v0, v1, v2}, Ljwtc/android/chess/ics/ICSClient;->confirmShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnPlayGameResult(Ljava/lang/String;)V
    .locals 0

    .line 1392
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->gameToast(Ljava/lang/String;)V

    return-void
.end method

.method public OnPlayGameStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Game initialized"

    .line 1347
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->globalToast(Ljava/lang/String;)V

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnPlayGameStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ICSClient"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object p3, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    if-eqz p3, :cond_1

    .line 1350
    invoke-virtual {p3}, Ljwtc/android/chess/ics/ICSServer;->getHandle()Ljava/lang/String;

    move-result-object p3

    if-eq p3, p1, :cond_0

    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSServer;->getHandle()Ljava/lang/String;

    move-result-object p1

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 1351
    iput-boolean p1, p0, Ljwtc/android/chess/ics/ICSClient;->isPlaying:Z

    :cond_1
    return-void
.end method

.method public OnPlayGameStopped()V
    .locals 1

    const/4 v0, 0x0

    .line 1398
    iput-boolean v0, p0, Ljwtc/android/chess/ics/ICSClient;->isPlaying:Z

    return-void
.end method

.method public OnPlayerList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1283
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mapPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1284
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1285
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->mapPlayers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1287
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->mapPlayers:Ljava/util/ArrayList;

    new-instance v0, Ljwtc/android/chess/ics/ICSClient$ComparatorHashRating;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSClient$ComparatorHashRating;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1288
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->adapterPlayers:Landroid/widget/SimpleAdapter;

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 1290
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setPlayerView()V

    return-void
.end method

.method public OnPuzzleSolved()V
    .locals 1

    const-string v0, "Puzzle solved"

    .line 1445
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->globalToast(Ljava/lang/String;)V

    return-void
.end method

.method public OnPuzzleStarted()V
    .locals 1

    const-string v0, "Puzzle started"

    .line 1435
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->globalToast(Ljava/lang/String;)V

    return-void
.end method

.method public OnPuzzleStopped()V
    .locals 1

    const-string v0, "Puzzle stopped"

    .line 1440
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->globalToast(Ljava/lang/String;)V

    return-void
.end method

.method public OnResumingAdjournedGame()V
    .locals 1

    const-string v0, "Resuming adjourned game"

    .line 1413
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->gameToast(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1414
    iput-boolean v0, p0, Ljwtc/android/chess/ics/ICSClient;->isPlaying:Z

    return-void
.end method

.method public OnSeekNotAvailable()V
    .locals 1

    const-string v0, "That seek is not available"

    .line 1342
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->globalToast(Ljava/lang/String;)V

    return-void
.end method

.method public OnSessionEnded()V
    .locals 0

    .line 1263
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setLoginView()V

    return-void
.end method

.method public OnSoughtResult(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1460
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mapChallenges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1461
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1462
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->mapChallenges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1464
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->adapterChallenges:Landroid/widget/SimpleAdapter;

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public OnState()V
    .locals 18

    move-object/from16 v0, p0

    .line 1515
    iget-object v1, v0, Ljwtc/android/chess/ics/ICSClient;->gameApi:Ljwtc/android/chess/services/GameApi;

    check-cast v1, Ljwtc/android/chess/ics/ICSApi;

    .line 1516
    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSApi;->getMyTurn()I

    move-result v2

    .line 1517
    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSApi;->getTurn()I

    move-result v3

    .line 1518
    iget-object v4, v0, Ljwtc/android/chess/ics/ICSClient;->_tvLastMove:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSApi;->getLastMove()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1519
    iget-object v4, v0, Ljwtc/android/chess/ics/ICSClient;->_tvPlayerTop:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljwtc/android/chess/ics/ICSApi;->getOpponentPlayerName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    iget-object v4, v0, Ljwtc/android/chess/ics/ICSClient;->_tvPlayerBottom:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljwtc/android/chess/ics/ICSApi;->getMyPlayerName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1522
    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSApi;->getLastTo()I

    move-result v4

    .line 1523
    iget-object v5, v0, Ljwtc/android/chess/ics/ICSClient;->highlightedPositions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1525
    iget-object v5, v0, Ljwtc/android/chess/ics/ICSClient;->highlightedPositions:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    :cond_0
    iget-object v4, v0, Ljwtc/android/chess/ics/ICSClient;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v4, v7}, Ljwtc/android/chess/views/ChessBoardView;->setRotated(Z)V

    .line 1530
    iget-object v8, v0, Ljwtc/android/chess/ics/ICSClient;->localClockApi:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSApi;->getIncrement()J

    move-result-wide v9

    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSApi;->getWhiteRemaining()J

    move-result-wide v11

    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSApi;->getBlackRemaining()J

    move-result-wide v13

    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSApi;->getTurn()I

    move-result v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v8 .. v17}, Ljwtc/android/chess/services/LocalClockApi;->startClock(JJJIJ)V

    .line 1532
    iget-object v1, v0, Ljwtc/android/chess/ics/ICSClient;->switchTurnOpp:Landroid/widget/ViewSwitcher;

    const/4 v4, 0x4

    if-nez v3, :cond_2

    if-eq v2, v6, :cond_3

    :cond_2
    if-ne v3, v6, :cond_4

    if-nez v2, :cond_4

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    const/4 v7, 0x4

    :goto_1
    invoke-virtual {v1, v7}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 1533
    iget-object v1, v0, Ljwtc/android/chess/ics/ICSClient;->switchTurnOpp:Landroid/widget/ViewSwitcher;

    if-nez v3, :cond_5

    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v1, v7}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 1535
    iget-object v1, v0, Ljwtc/android/chess/ics/ICSClient;->switchTurnMe:Landroid/widget/ViewSwitcher;

    if-ne v3, v6, :cond_6

    if-eq v2, v6, :cond_7

    :cond_6
    if-nez v3, :cond_8

    if-nez v2, :cond_8

    :cond_7
    const/4 v4, 0x0

    :cond_8
    invoke-virtual {v1, v4}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 1536
    iget-object v1, v0, Ljwtc/android/chess/ics/ICSClient;->switchTurnMe:Landroid/widget/ViewSwitcher;

    if-nez v3, :cond_9

    goto :goto_3

    :cond_9
    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v1, v5}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    if-ne v2, v3, :cond_a

    .line 1538
    invoke-virtual/range {p0 .. p0}, Ljwtc/android/chess/ics/ICSClient;->hasPremoved()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1539
    iget v1, v0, Ljwtc/android/chess/ics/ICSClient;->premoveFrom:I

    iget v2, v0, Ljwtc/android/chess/ics/ICSClient;->premoveTo:I

    invoke-virtual {v0, v1, v2}, Ljwtc/android/chess/ics/ICSClient;->requestMove(II)Z

    .line 1540
    invoke-virtual/range {p0 .. p0}, Ljwtc/android/chess/ics/ICSClient;->resetPremove()V

    .line 1543
    :cond_a
    invoke-super/range {p0 .. p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->OnState()V

    return-void
.end method

.method public OnStoredListResult(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1480
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mapStored:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1481
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1482
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->mapStored:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1484
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->adapterStored:Landroid/widget/SimpleAdapter;

    invoke-virtual {p1}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public OnYourRequestSended()V
    .locals 1

    const v0, 0x7f0e00c5

    .line 1403
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->gameToast(Ljava/lang/String;)V

    return-void
.end method

.method protected addConsoleText(Ljava/lang/String;)V
    .locals 4

    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_tvConsole:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1568
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_0

    .line 1569
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->_tvConsole:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, -0x1000

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1571
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_tvConsole:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1574
    :goto_0
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->_scrollConsole:Landroid/widget/ScrollView;

    new-instance v0, Ljwtc/android/chess/ics/ICSClient$21;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSClient$21;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addListeners()V
    .locals 1

    .line 835
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0, p0}, Ljwtc/android/chess/ics/ICSServer;->addListener(Ljwtc/android/chess/ics/ICSListener;)V

    :cond_0
    return-void
.end method

.method protected gameOverToast(Ljava/lang/String;)V
    .locals 6

    const-string v0, ")"

    .line 656
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "} 1-0"

    .line 658
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0e0094

    if-nez v1, :cond_1

    const-string v1, "} 0-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "} 1/2-1/2"

    .line 673
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 674
    invoke-virtual {p0, v4}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    const v1, 0x7f0e01b5

    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->gameToast(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v1, " resigns} "

    .line 661
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    const p1, 0x7f0e01bd

    .line 662
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resigns"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "checkmated"

    .line 664
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    const p1, 0x7f0e01bb

    .line 665
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v1, "forfeits on time"

    .line 667
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    const p1, 0x7f0e01be

    .line 668
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const p1, 0x7f0e0093

    .line 671
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 679
    :cond_5
    :goto_1
    invoke-virtual {p0, v4}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->gameToast(Ljava/lang/String;)V

    return-void
.end method

.method public gameToast(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 690
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x11

    const/4 v1, 0x0

    .line 691
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 692
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public get_TimeWarning()I
    .locals 1

    .line 857
    iget v0, p0, Ljwtc/android/chess/ics/ICSClient;->_TimeWarning:I

    return v0
.end method

.method public get_blackHandle()Ljava/lang/String;
    .locals 2

    .line 882
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public get_blackRating()Ljava/lang/String;
    .locals 2

    .line 890
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public get_gameStartSound()I
    .locals 1

    .line 861
    iget v0, p0, Ljwtc/android/chess/ics/ICSClient;->_gameStartSound:I

    return v0
.end method

.method public get_whiteHandle()Ljava/lang/String;
    .locals 2

    .line 866
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public get_whiteRating()Ljava/lang/String;
    .locals 2

    .line 874
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public globalToast(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 697
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 698
    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 699
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 897
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0}, Ljwtc/android/chess/ics/ICSServer;->isConnected()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public is_bTimeWarning()Z
    .locals 1

    .line 853
    iget-boolean v0, p0, Ljwtc/android/chess/ics/ICSClient;->_bTimeWarning:Z

    return v0
.end method

.method public loadChallenges()V
    .locals 1

    const-string v0, "sought"

    .line 1182
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setChallengeView()V

    return-void
.end method

.method public loadGames()V
    .locals 1

    .line 1187
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setLoadingView()V

    const-string v0, "games"

    .line 1188
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    return-void
.end method

.method public loadPlayers()V
    .locals 1

    .line 1192
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setLoadingView()V

    const-string v0, "players"

    .line 1193
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    return-void
.end method

.method protected makeGamePGN(Ljava/lang/String;)V
    .locals 8

    .line 527
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, " +"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\{.*\\}"

    const-string v2, ""

    .line 528
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1."

    .line 533
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 535
    iget-boolean v0, p0, Ljwtc/android/chess/ics/ICSClient;->_bShowClockPGN:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->convertTimeUsedToClock(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "\\s*\\([^\\)]*\\)\\s*"

    .line 538
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 543
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->PGN:Ljava/lang/StringBuilder;

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Event \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"]\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->PGN:Ljava/lang/StringBuilder;

    const-string v3, "[Site \"FICS\"]\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->PGN:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Date \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->PGN:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[White \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->PGN:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Black \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->PGN:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Result \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->PGN:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WhiteElo \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->PGN:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BlackElo \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    iget-object v3, p0, Ljwtc/android/chess/ics/ICSClient;->PGN:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TimeControl \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "+"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_matgame:Ljava/util/regex/Matcher;

    const/16 v7, 0x9

    .line 554
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_FEN:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 557
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_FEN:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 558
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_FEN:Ljava/lang/String;

    const-string v3, "P"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v7

    iget-object v4, p0, Ljwtc/android/chess/ics/ICSClient;->_FEN:Ljava/lang/String;

    const-string v5, "W"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "rnbqkbnr"

    .line 559
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "RNBQKBNR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 560
    :cond_1
    iget-object v3, p0, Ljwtc/android/chess/ics/ICSClient;->PGN:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FEN \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/pppppppp/8/8/8/8/PPPPPPPP/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " w KQkq - 0 1\"]\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :cond_2
    iput-object v2, p0, Ljwtc/android/chess/ics/ICSClient;->_FEN:Ljava/lang/String;

    .line 565
    :cond_3
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->PGN:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public notificationAPP()V
    .locals 6

    .line 905
    iget-boolean v0, p0, Ljwtc/android/chess/ics/ICSClient;->_notifyON:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljwtc/android/chess/ics/ICSClient;->_ICSNotifyLifeCycle:Z

    if-eqz v0, :cond_0

    .line 907
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljwtc/android/chess/ics/ICSClient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 908
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v2, "notification"

    .line 910
    invoke-virtual {p0, v2}, Ljwtc/android/chess/ics/ICSClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 912
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 913
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v4, 0x7f0700ad

    .line 914
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v4, 0x1

    .line 916
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v4, -0xff0001

    const/16 v5, 0x64

    .line 917
    invoke-virtual {v0, v4, v5, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v0

    const v4, 0x7f0e00b9

    .line 918
    invoke-virtual {p0, v4}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v4, 0x7f0e00b8

    .line 919
    invoke-virtual {p0, v4}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 921
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 923
    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 134
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "ICSClient"

    const-string v0, "onCreate"

    .line 135
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0b0027

    .line 137
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->setContentView(I)V

    .line 139
    new-instance v1, Ljwtc/android/chess/ics/ICSApi;

    invoke-direct {v1}, Ljwtc/android/chess/ics/ICSApi;-><init>()V

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->gameApi:Ljwtc/android/chess/services/GameApi;

    .line 141
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->afterCreate()V

    const/4 v1, 0x0

    .line 143
    iput-boolean v1, p0, Ljwtc/android/chess/ics/ICSClient;->isPlaying:Z

    .line 145
    new-instance v2, Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, p0, p0, v4, v3}, Ljwtc/android/chess/ics/ICSMatchDlg;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILandroid/content/SharedPreferences;)V

    iput-object v2, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgMatch:Ljwtc/android/chess/ics/ICSMatchDlg;

    .line 146
    new-instance v2, Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-direct {v2, p0}, Ljwtc/android/chess/ics/ICSPlayerDlg;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgPlayer:Ljwtc/android/chess/ics/ICSPlayerDlg;

    .line 147
    new-instance v2, Ljwtc/android/chess/ics/ICSConfirmDlg;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p0, v3}, Ljwtc/android/chess/ics/ICSConfirmDlg;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V

    iput-object v2, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgConfirm:Ljwtc/android/chess/ics/ICSConfirmDlg;

    .line 148
    new-instance v2, Ljwtc/android/chess/ics/ICSGameOverDlg;

    invoke-direct {v2, p0}, Ljwtc/android/chess/ics/ICSGameOverDlg;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgOver:Ljwtc/android/chess/ics/ICSGameOverDlg;

    const/16 v2, 0xa

    .line 150
    iput v2, p0, Ljwtc/android/chess/ics/ICSClient;->_iConsoleCharacterSize:I

    const/4 v2, 0x1

    .line 151
    iput-boolean v2, p0, Ljwtc/android/chess/ics/ICSClient;->_bAutoSought:Z

    .line 152
    iput-boolean v2, p0, Ljwtc/android/chess/ics/ICSClient;->_bTimeWarning:Z

    .line 153
    iput-boolean v2, p0, Ljwtc/android/chess/ics/ICSClient;->_bEndGameDialog:Z

    .line 154
    iput-boolean v2, p0, Ljwtc/android/chess/ics/ICSClient;->_bShowClockPGN:Z

    const v5, 0x7f0800ac

    .line 156
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewAnimator;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->viewAnimatorRoot:Landroid/widget/ViewAnimator;

    const v5, 0x7f0800ab

    .line 157
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewAnimator;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->viewAnimatorPlayMode:Landroid/widget/ViewAnimator;

    const v5, 0x7f08005c

    .line 159
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->playButtonsLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f080058

    .line 160
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->examineButtonsLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0800a9

    .line 162
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_tvPlayerTop:Landroid/widget/TextView;

    const v5, 0x7f080089

    .line 163
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_tvPlayerBottom:Landroid/widget/TextView;

    const v5, 0x7f08009b

    .line 165
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_tvPlayerTopRating:Landroid/widget/TextView;

    const v5, 0x7f080098

    .line 166
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_tvPlayerBottomRating:Landroid/widget/TextView;

    const v5, 0x7f08008e

    .line 168
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_tvClockTop:Landroid/widget/TextView;

    const v5, 0x7f08008b

    .line 169
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_tvClockBottom:Landroid/widget/TextView;

    const v5, 0x7f080097

    .line 171
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_tvBoardNum:Landroid/widget/TextView;

    const v5, 0x7f080096

    .line 172
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_tvLastMove:Landroid/widget/TextView;

    const v5, 0x7f08009a

    .line 173
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_tvTimePerMove:Landroid/widget/TextView;

    const v5, 0x7f08009e

    .line 174
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_tvMoveNumber:Landroid/widget/TextView;

    const v5, 0x7f080052

    .line 176
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewSwitcher;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->switchTurnMe:Landroid/widget/ViewSwitcher;

    const v5, 0x7f080053

    .line 177
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewSwitcher;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->switchTurnOpp:Landroid/widget/ViewSwitcher;

    const v5, 0x7f080090

    .line 179
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_tvConsole:Landroid/widget/TextView;

    .line 180
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v5, 0x7f080040

    .line 182
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_editHandle:Landroid/widget/EditText;

    const v5, 0x7f080041

    .line 183
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->_editPwd:Landroid/widget/EditText;

    const v5, 0x7f080004

    .line 185
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 186
    new-instance v6, Ljwtc/android/chess/ics/ICSClient$2;

    invoke-direct {v6, p0}, Ljwtc/android/chess/ics/ICSClient$2;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f08002b

    .line 215
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 216
    new-instance v6, Ljwtc/android/chess/ics/ICSClient$3;

    invoke-direct {v6, p0}, Ljwtc/android/chess/ics/ICSClient$3;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f080013

    .line 223
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 224
    new-instance v6, Ljwtc/android/chess/ics/ICSClient$4;

    invoke-direct {v6, p0}, Ljwtc/android/chess/ics/ICSClient$4;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f080014

    .line 231
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 232
    new-instance v6, Ljwtc/android/chess/ics/ICSClient$5;

    invoke-direct {v6, p0}, Ljwtc/android/chess/ics/ICSClient$5;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    new-instance v5, Ljwtc/android/chess/ics/ICSClient$6;

    invoke-direct {v5, p0}, Ljwtc/android/chess/ics/ICSClient$6;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    const v6, 0x7f080034

    .line 246
    invoke-virtual {p0, v6}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 247
    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f08001b

    .line 249
    invoke-virtual {p0, v6}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 250
    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f080019

    .line 252
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 253
    new-instance v6, Ljwtc/android/chess/ics/ICSClient$7;

    invoke-direct {v6, p0}, Ljwtc/android/chess/ics/ICSClient$7;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f08001a

    .line 260
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 261
    new-instance v6, Ljwtc/android/chess/ics/ICSClient$8;

    invoke-direct {v6, p0}, Ljwtc/android/chess/ics/ICSClient$8;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0800a8

    .line 268
    invoke-virtual {p0, v5}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->textViewTitle:Landroid/widget/TextView;

    const-string v5, "menu_item"

    .line 270
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [I

    const v5, 0x7f080068

    aput v5, v11, v1

    .line 272
    new-instance v1, Landroid/widget/SimpleAdapter;

    iget-object v8, p0, Ljwtc/android/chess/ics/ICSClient;->mapMenu:Ljava/util/ArrayList;

    const v9, 0x7f0b0037

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->adapterMenu:Landroid/widget/SimpleAdapter;

    const v1, 0x7f080062

    .line 274
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->listMenu:Landroid/widget/ListView;

    .line 275
    iget-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->adapterMenu:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->listMenu:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f08001f

    .line 278
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->buttonMenu:Landroid/widget/ImageButton;

    .line 279
    new-instance v5, Ljwtc/android/chess/ics/ICSClient$9;

    invoke-direct {v5, p0}, Ljwtc/android/chess/ics/ICSClient$9;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    new-instance v1, Landroid/widget/SimpleAdapter;

    iget-object v8, p0, Ljwtc/android/chess/ics/ICSClient;->mapChallenges:Ljava/util/ArrayList;

    const-string v5, "text_game"

    const-string v12, "text_name"

    const-string v13, "text_rating"

    filled-new-array {v5, v12, v13}, [Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [I

    fill-array-data v11, :array_0

    const v9, 0x7f0b0031

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->adapterChallenges:Landroid/widget/SimpleAdapter;

    const v1, 0x7f08005f

    .line 289
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->listChallenges:Landroid/widget/ListView;

    .line 290
    iget-object v3, p0, Ljwtc/android/chess/ics/ICSClient;->adapterChallenges:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->listChallenges:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 293
    new-instance v1, Landroid/widget/SimpleAdapter;

    iget-object v7, p0, Ljwtc/android/chess/ics/ICSClient;->mapPlayers:Ljava/util/ArrayList;

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [I

    fill-array-data v10, :array_1

    const v8, 0x7f0b0030

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->adapterPlayers:Landroid/widget/SimpleAdapter;

    const v1, 0x7f080064

    .line 297
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->listPlayers:Landroid/widget/ListView;

    .line 298
    iget-object v3, p0, Ljwtc/android/chess/ics/ICSClient;->adapterPlayers:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 299
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->listPlayers:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 301
    new-instance v1, Landroid/widget/SimpleAdapter;

    iget-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->mapGames:Ljava/util/ArrayList;

    const-string v6, "nr"

    const-string v7, "text_name1"

    const-string v8, "text_name2"

    const-string v9, "text_rating1"

    const-string v10, "text_rating2"

    const-string v11, "text_time1"

    const-string v12, "text_time2"

    const-string v13, "text_type"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0x8

    new-array v8, v3, [I

    fill-array-data v8, :array_2

    const v6, 0x7f0b0029

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->adapterGames:Landroid/widget/SimpleAdapter;

    const v1, 0x7f080061

    .line 305
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_listGames:Landroid/widget/ListView;

    .line 306
    iget-object v3, p0, Ljwtc/android/chess/ics/ICSClient;->adapterGames:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_listGames:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 309
    new-instance v1, Landroid/widget/SimpleAdapter;

    iget-object v5, p0, Ljwtc/android/chess/ics/ICSClient;->mapStored:Ljava/util/ArrayList;

    const-string v3, "nr_stored"

    const-string v4, "color_stored"

    const-string v6, "text_name_stored"

    const-string v7, "available_stored"

    filled-new-array {v3, v4, v6, v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x4

    new-array v8, v3, [I

    fill-array-data v8, :array_3

    const v6, 0x7f0b0032

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->adapterStored:Landroid/widget/SimpleAdapter;

    .line 390
    new-instance v1, Ljwtc/android/chess/ics/ICSClient$10;

    invoke-direct {v1, p0}, Ljwtc/android/chess/ics/ICSClient$10;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    const v3, 0x7f08003f

    .line 408
    invoke-virtual {p0, v3}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Ljwtc/android/chess/ics/ICSClient;->_editConsole:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 410
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 411
    iget-object v3, p0, Ljwtc/android/chess/ics/ICSClient;->_editConsole:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 412
    iget-object v2, p0, Ljwtc/android/chess/ics/ICSClient;->_editConsole:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    const v1, 0x7f080075

    .line 415
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_scrollConsole:Landroid/widget/ScrollView;

    const v1, 0x7f080005

    .line 423
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 425
    new-instance v2, Ljwtc/android/chess/ics/ICSClient$11;

    invoke-direct {v2, p0}, Ljwtc/android/chess/ics/ICSClient$11;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const/4 v1, 0x0

    .line 441
    iput-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_ringNotification:Landroid/media/Ringtone;

    .line 445
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->localClockApi:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v1, p0}, Ljwtc/android/chess/services/LocalClockApi;->addListener(Ljwtc/android/chess/services/ClockListener;)V

    .line 447
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x7f08017d
        0x7f08017f
        0x7f080183
    .end array-data

    :array_1
    .array-data 4
        0x7f08017f
        0x7f080183
    .end array-data

    :array_2
    .array-data 4
        0x7f08013e
        0x7f080180
        0x7f080181
        0x7f080184
        0x7f080185
        0x7f080186
        0x7f080187
        0x7f080188
    .end array-data

    :array_3
    .array-data 4
        0x7f08013f
        0x7f0800dd
        0x7f080182
        0x7f0800cc
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ICSClient"

    const-string v1, "onDestroy"

    .line 987
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->removeListeners()V

    .line 991
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 992
    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    .line 994
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onDestroy()V

    return-void
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

    .line 1018
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSClient;->listChallenges:Landroid/widget/ListView;

    const-string p4, "item "

    const-string p5, "onItemClick"

    if-ne p1, p2, :cond_0

    .line 1019
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->mapChallenges:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p3, :cond_11

    .line 1020
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->mapChallenges:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 1021
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "play"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "play "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1024
    :cond_0
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSClient;->listPlayers:Landroid/widget/ListView;

    if-ne p1, p2, :cond_1

    .line 1025
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->mapPlayers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p3, :cond_11

    .line 1026
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->mapPlayers:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 1027
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "text_name"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgPlayer:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->opponentName(Ljava/lang/String;)V

    .line 1029
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgPlayer:Ljwtc/android/chess/ics/ICSPlayerDlg;

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSPlayerDlg;->_tvPlayerListConsole:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgPlayer:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->show()V

    goto/16 :goto_0

    .line 1033
    :cond_1
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSClient;->_listGames:Landroid/widget/ListView;

    if-ne p1, p2, :cond_2

    .line 1034
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->mapGames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p3, :cond_11

    .line 1035
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->mapGames:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 1036
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "text_name1"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "observe "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    const-string p1, "refresh"

    .line 1038
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1040
    :cond_2
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSClient;->_listStored:Landroid/widget/ListView;

    if-ne p1, p2, :cond_3

    .line 1041
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->mapStored:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p3, :cond_11

    .line 1042
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->mapStored:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 1043
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "text_name_stored"

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "match "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1046
    :cond_3
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSClient;->listMenu:Landroid/widget/ListView;

    if-ne p1, p2, :cond_11

    .line 1047
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->mapMenu:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p3, :cond_11

    .line 1048
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->mapMenu:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "menu_item"

    .line 1049
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const p2, 0x7f0e00a4

    .line 1051
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1052
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->loadGames()V

    goto/16 :goto_0

    :cond_4
    const p2, 0x7f0e00b2

    .line 1053
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string p4, "obs /b"

    if-eqz p3, :cond_5

    .line 1054
    invoke-virtual {p0, p4}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const p3, 0x7f0e00a6

    .line 1055
    invoke-virtual {p0, p3}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1056
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->loadPlayers()V

    goto/16 :goto_0

    :cond_6
    const p3, 0x7f0e009e

    .line 1057
    invoke-virtual {p0, p3}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1058
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->loadChallenges()V

    goto/16 :goto_0

    :cond_7
    const p3, 0x7f0e00ae

    .line 1059
    invoke-virtual {p0, p3}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1060
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgMatch:Ljwtc/android/chess/ics/ICSMatchDlg;

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSMatchDlg;->_rbSeek:Landroid/widget/RadioButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1061
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgMatch:Ljwtc/android/chess/ics/ICSMatchDlg;

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSMatchDlg;->_rbSeek:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->performClick()Z

    .line 1062
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->_dlgMatch:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->show()V

    goto/16 :goto_0

    .line 1063
    :cond_8
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1064
    invoke-virtual {p0, p4}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const p2, 0x7f0e00b3

    .line 1065
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p1, "obs /s"

    .line 1066
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const p2, 0x7f0e00a7

    .line 1067
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p1, "tell puzzlebot getmate"

    .line 1068
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const p2, 0x7f0e00a9

    .line 1069
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    const-string p1, "tell puzzlebot gettactics"

    .line 1070
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const p2, 0x7f0e00a8

    .line 1071
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p1, "tell puzzlebot getstudy"

    .line 1072
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const p2, 0x7f0e00a1

    .line 1073
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1074
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setConsoleView()V

    goto :goto_0

    :cond_e
    const p2, 0x7f0e00f0

    .line 1075
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1076
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1077
    const-class p2, Ljwtc/android/chess/ics/ICSPrefs;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1078
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_f
    const p2, 0x7f0e00e6

    .line 1079
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 1080
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1081
    const-class p2, Ljwtc/android/chess/HtmlActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1082
    sget-object p2, Ljwtc/android/chess/HtmlActivity;->HELP_MODE:Ljava/lang/String;

    const-string p3, "help_online"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1086
    :cond_10
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    :cond_11
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 452
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 453
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient;->gameApi:Ljwtc/android/chess/services/GameApi;

    check-cast p1, Ljwtc/android/chess/ics/ICSApi;

    .line 454
    iget-object p2, p0, Ljwtc/android/chess/ics/ICSClient;->viewAnimatorRoot:Landroid/widget/ViewAnimator;

    invoke-virtual {p2}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v0, :cond_4

    .line 457
    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSApi;->getViewMode()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 460
    iget-boolean p1, p0, Ljwtc/android/chess/ics/ICSClient;->isPlaying:Z

    if-eqz p1, :cond_0

    .line 461
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f0e009b

    .line 462
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0e002b

    .line 463
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljwtc/android/chess/ics/ICSClient$13;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSClient$13;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0e0029

    .line 472
    invoke-virtual {p0, p2}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljwtc/android/chess/ics/ICSClient$12;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSClient$12;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setMenuView()V

    :goto_0
    return v1

    :cond_1
    if-eq p1, v0, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "unexamine"

    .line 488
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "unobserve"

    .line 485
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    .line 491
    :goto_1
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setMenuView()V

    return v1

    :cond_4
    const p1, 0x7f0e00c4

    .line 495
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->stopSession(I)V

    return v1

    .line 499
    :cond_5
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->finish()V

    .line 502
    invoke-super {p0, p1, p2}, Ljwtc/android/chess/activities/ChessBoardActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "ICSClient"

    const-string v1, "onPause"

    .line 930
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->removeListeners()V

    .line 934
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 936
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_editHandle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ics_handle"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 937
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_editPwd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ics_password"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 948
    iget-boolean v1, p0, Ljwtc/android/chess/ics/ICSClient;->_bICSVolume:Z

    const-string v2, "ICSVolume"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 950
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    .line 952
    iput-boolean v0, p0, Ljwtc/android/chess/ics/ICSClient;->_ICSNotifyLifeCycle:Z

    .line 954
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string v0, "ICSClient"

    const-string v1, "onRestart"

    .line 959
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 727
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onResume()V

    const-string v0, "ICSClient"

    const-string v1, "onResume"

    .line 728
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->invalidateOptionsMenu()V

    .line 732
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 734
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_editHandle:Landroid/widget/EditText;

    const-string v2, "ics_handle"

    const-string v3, "guest"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->_editPwd:Landroid/widget/EditText;

    const-string v2, "ics_password"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "ICSConsoleCharacterSize"

    const-string v2, "10"

    .line 737
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljwtc/android/chess/ics/ICSClient;->_iConsoleCharacterSize:I

    .line 738
    iget-object v3, p0, Ljwtc/android/chess/ics/ICSClient;->_tvConsole:Landroid/widget/TextView;

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "ICSAutoSought"

    const/4 v3, 0x1

    .line 740
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljwtc/android/chess/ics/ICSClient;->_bAutoSought:Z

    const-string v1, "ICSTimeWarning"

    .line 742
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljwtc/android/chess/ics/ICSClient;->_bTimeWarning:Z

    const-string v1, "ICSTimeWarningsecs"

    .line 743
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljwtc/android/chess/ics/ICSClient;->_TimeWarning:I

    const-string v1, "ICSEndGameDialog"

    .line 745
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljwtc/android/chess/ics/ICSClient;->_bEndGameDialog:Z

    const-string v1, "ICSClockPGN"

    .line 747
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljwtc/android/chess/ics/ICSClient;->_bShowClockPGN:Z

    const-string v1, "ICSVolume"

    .line 749
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljwtc/android/chess/ics/ICSClient;->_bICSVolume:Z

    const-string v1, "notification"

    .line 753
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x0

    .line 754
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 755
    iput-boolean v2, p0, Ljwtc/android/chess/ics/ICSClient;->_ICSNotifyLifeCycle:Z

    const-string v1, "ICSGameStartSound"

    const-string v2, "1"

    .line 757
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljwtc/android/chess/ics/ICSClient;->_gameStartSound:I

    const-string v1, "ICSGameStartBringToFront"

    .line 759
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljwtc/android/chess/ics/ICSClient;->_notifyON:Z

    const-string v1, "NotificationUri"

    const/4 v2, 0x0

    .line 822
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 824
    iput-object v2, p0, Ljwtc/android/chess/ics/ICSClient;->_ringNotification:Landroid/media/Ringtone;

    goto :goto_0

    .line 826
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 827
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_ringNotification:Landroid/media/Ringtone;

    .line 830
    :goto_0
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->addListeners()V

    .line 831
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->showLoginIfNotConnected()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    const-string v0, "ICSClient"

    const-string v1, "onStart"

    .line 965
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onStart()V

    .line 968
    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    if-nez v1, :cond_1

    .line 969
    new-instance v1, Landroid/content/Intent;

    const-class v2, Ljwtc/android/chess/ics/ICSServer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Ljwtc/android/chess/ics/ICSClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Ljwtc/android/chess/ics/ICSClient;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Bind to ICSServer"

    .line 970
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "Could not init remote chess process"

    .line 972
    invoke-virtual {p0, v1}, Ljwtc/android/chess/ics/ICSClient;->globalToast(Ljava/lang/String;)V

    const-string v1, "Error: The requested service doesn\'t exist, or this client isn\'t allowed access to it."

    .line 973
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "ICSClient"

    const-string v1, "onStop"

    .line 980
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onStop()V

    return-void
.end method

.method public removeListeners()V
    .locals 1

    .line 841
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0, p0}, Ljwtc/android/chess/ics/ICSServer;->removeListener(Ljwtc/android/chess/ics/ICSListener;)V

    :cond_0
    return-void
.end method

.method public requestMove(II)Z
    .locals 3

    .line 704
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->highlightedPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 705
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->highlightedPositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->highlightedPositions:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->gameApi:Ljwtc/android/chess/services/GameApi;

    check-cast v0, Ljwtc/android/chess/ics/ICSApi;

    .line 709
    iget-boolean v1, p0, Ljwtc/android/chess/ics/ICSClient;->isPlaying:Z

    const-string v2, "-"

    if-eqz v1, :cond_1

    .line 710
    invoke-virtual {v0}, Ljwtc/android/chess/ics/ICSApi;->getMyTurn()I

    move-result v1

    invoke-virtual {v0}, Ljwtc/android/chess/ics/ICSApi;->getTurn()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljwtc/chess/Pos;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljwtc/chess/Pos;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 714
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    goto :goto_0

    .line 716
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljwtc/android/chess/ics/ICSClient;->setPremove(II)V

    goto :goto_0

    .line 719
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljwtc/chess/Pos;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljwtc/chess/Pos;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 720
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public sendString(Ljava/lang/String;)V
    .locals 2

    .line 998
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljwtc/android/chess/ics/ICSServer;->sendString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1000
    :try_start_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e01ca

    .line 1001
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0e0099

    .line 1002
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0e002a

    .line 1003
    invoke-virtual {p0, v0}, Ljwtc/android/chess/ics/ICSClient;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljwtc/android/chess/ics/ICSClient$15;

    invoke-direct {v1, p0}, Ljwtc/android/chess/ics/ICSClient$15;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1010
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1012
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ICSClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setBoardView()V
    .locals 2

    .line 1164
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->viewAnimatorRoot:Landroid/widget/ViewAnimator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1165
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->buttonMenu:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->textViewTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChallengeView()V
    .locals 2

    .line 1158
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->viewAnimatorRoot:Landroid/widget/ViewAnimator;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1159
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->buttonMenu:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->textViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setConsoleView()V
    .locals 2

    .line 1176
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->viewAnimatorRoot:Landroid/widget/ViewAnimator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1177
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->buttonMenu:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1178
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->textViewTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setGamesView()V
    .locals 2

    .line 1152
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->viewAnimatorRoot:Landroid/widget/ViewAnimator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1153
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->buttonMenu:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1154
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->textViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0e00a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setLoadingView()V
    .locals 2

    .line 1140
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->viewAnimatorRoot:Landroid/widget/ViewAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1141
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->buttonMenu:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->textViewTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoginView()V
    .locals 2

    .line 1170
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->viewAnimatorRoot:Landroid/widget/ViewAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1171
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->buttonMenu:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1172
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->textViewTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMenuView()V
    .locals 6

    .line 1093
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mapMenu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 1095
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1114
    iget-object v4, p0, Ljwtc/android/chess/ics/ICSClient;->mapMenu:Ljava/util/ArrayList;

    new-instance v5, Ljwtc/android/chess/ics/ICSClient$16;

    invoke-direct {v5, p0, v1, v3}, Ljwtc/android/chess/ics/ICSClient$16;-><init>(Ljwtc/android/chess/ics/ICSClient;[II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1118
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1119
    new-instance v1, Lorg/json/JSONArray;

    const-string v3, "ics_custom_commands"

    const-string v4, "[\"tell relay listgames\",\"tell endgamebot kbnk\",\"tell endgamebot help\",\"exl\",\"help commands\"]"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1121
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v2, v0, :cond_1

    .line 1124
    :try_start_1
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->mapMenu:Ljava/util/ArrayList;

    new-instance v3, Ljwtc/android/chess/ics/ICSClient$17;

    invoke-direct {v3, p0, v1, v2}, Ljwtc/android/chess/ics/ICSClient$17;-><init>(Ljwtc/android/chess/ics/ICSClient;Lorg/json/JSONArray;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    nop

    .line 1131
    :cond_1
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->adapterMenu:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 1133
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->viewAnimatorRoot:Landroid/widget/ViewAnimator;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1134
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->buttonMenu:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1136
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->textViewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSClient;->icsServer:Ljwtc/android/chess/ics/ICSServer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSServer;->getHandle()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, "--"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0e009e
        0x7f0e00ae
        0x7f0e00a4
        0x7f0e00a7
        0x7f0e00a9
        0x7f0e00a8
        0x7f0e00a6
        0x7f0e00b2
        0x7f0e00b3
        0x7f0e00f0
        0x7f0e00a1
        0x7f0e00e6
    .end array-data
.end method

.method public setPlayerView()V
    .locals 2

    .line 1146
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->viewAnimatorRoot:Landroid/widget/ViewAnimator;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1147
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->buttonMenu:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->textViewTitle:Landroid/widget/TextView;

    const v1, 0x7f0e00a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public showLoginIfNotConnected()V
    .locals 1

    .line 847
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->setLoginView()V

    :cond_0
    return-void
.end method

.method public soundNotification()V
    .locals 1

    .line 1197
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSClient;->_ringNotification:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 1198
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    :cond_0
    return-void
.end method

.method public stopSession(I)V
    .locals 2

    .line 507
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSClient;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 510
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 511
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0e002a

    new-instance v1, Ljwtc/android/chess/ics/ICSClient$14;

    invoke-direct {v1, p0}, Ljwtc/android/chess/ics/ICSClient$14;-><init>(Ljwtc/android/chess/ics/ICSClient;)V

    .line 513
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 520
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
