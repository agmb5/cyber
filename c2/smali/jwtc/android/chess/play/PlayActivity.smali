.class public Ljwtc/android/chess/play/PlayActivity;
.super Ljwtc/android/chess/activities/ChessBoardActivity;
.source "PlayActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljwtc/android/chess/engine/EngineListener;
.implements Ljwtc/android/chess/helpers/ResultDialogListener;
.implements Ljwtc/android/chess/services/ClockListener;


# static fields
.field public static final REQUEST_CLOCK:I = 0x6

.field public static final REQUEST_FROM_QR_CODE:I = 0x4

.field public static final REQUEST_GAME_SETTINGS:I = 0x3

.field public static final REQUEST_MENU:I = 0x5

.field public static final REQUEST_OPEN:I = 0x2

.field public static final REQUEST_SAVE_GAME:I = 0x7

.field public static final REQUEST_SETUP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PlayActivity"


# instance fields
.field private bottomPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

.field private ecoService:Ljwtc/android/chess/services/EcoService;

.field private lGameID:J

.field private layoutBoardBottom:Landroid/widget/TableLayout;

.field private layoutBoardTop:Landroid/widget/TableLayout;

.field private localClock:Ljwtc/android/chess/services/LocalClockApi;

.field private myEngine:Ljwtc/android/chess/engine/EngineApi;

.field private myTurn:I

.field private playButton:Landroid/widget/ImageButton;

.field private progressBarEngine:Landroid/widget/ProgressBar;

.field private requestMoveFrom:I

.field private requestMoveTo:I

.field private seekBar:Landroid/widget/SeekBar;

.field private switchTurnMe:Landroid/widget/ViewSwitcher;

.field private switchTurnOpp:Landroid/widget/ViewSwitcher;

.field private textViewEngineValue:Landroid/widget/TextView;

.field private textViewMe:Landroid/widget/TextView;

.field private textViewMyClock:Landroid/widget/TextView;

.field private textViewOpponent:Landroid/widget/TextView;

.field private textViewOpponentClock:Landroid/widget/TextView;

.field private topPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

.field private vsCPU:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;-><init>()V

    .line 63
    new-instance v0, Ljwtc/android/chess/services/LocalClockApi;

    invoke-direct {v0}, Ljwtc/android/chess/services/LocalClockApi;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->localClock:Ljwtc/android/chess/services/LocalClockApi;

    .line 65
    new-instance v0, Ljwtc/android/chess/services/EcoService;

    invoke-direct {v0}, Ljwtc/android/chess/services/EcoService;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->ecoService:Ljwtc/android/chess/services/EcoService;

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Ljwtc/android/chess/play/PlayActivity;->vsCPU:Z

    .line 71
    iput v0, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    const/4 v0, -0x1

    iput v0, p0, Ljwtc/android/chess/play/PlayActivity;->requestMoveFrom:I

    iput v0, p0, Ljwtc/android/chess/play/PlayActivity;->requestMoveTo:I

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/chess/JNI;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    return-object p0
.end method

.method static synthetic access$100(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/chess/JNI;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    return-object p0
.end method

.method static synthetic access$1000(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessBoardView;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    return-object p0
.end method

.method static synthetic access$1102(Ljwtc/android/chess/play/PlayActivity;F)F
    .locals 0

    .line 53
    iput p1, p0, Ljwtc/android/chess/play/PlayActivity;->fVolume:F

    return p1
.end method

.method static synthetic access$1200(Ljwtc/android/chess/play/PlayActivity;)F
    .locals 0

    .line 53
    iget p0, p0, Ljwtc/android/chess/play/PlayActivity;->fVolume:F

    return p0
.end method

.method static synthetic access$1300(Ljwtc/android/chess/play/PlayActivity;)F
    .locals 0

    .line 53
    iget p0, p0, Ljwtc/android/chess/play/PlayActivity;->fVolume:F

    return p0
.end method

.method static synthetic access$1400(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/services/GameApi;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    return-object p0
.end method

.method static synthetic access$1502(Ljwtc/android/chess/play/PlayActivity;J)J
    .locals 0

    .line 53
    iput-wide p1, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    return-wide p1
.end method

.method static synthetic access$1600(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/services/GameApi;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    return-object p0
.end method

.method static synthetic access$200(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/services/GameApi;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    return-object p0
.end method

.method static synthetic access$300(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/engine/EngineApi;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    return-object p0
.end method

.method static synthetic access$400(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/services/GameApi;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    return-object p0
.end method

.method static synthetic access$500(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/services/GameApi;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    return-object p0
.end method

.method static synthetic access$600(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessBoardView;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    return-object p0
.end method

.method static synthetic access$700(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessPiecesStackView;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->topPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    return-object p0
.end method

.method static synthetic access$800(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessPiecesStackView;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->bottomPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    return-object p0
.end method

.method static synthetic access$900(Ljwtc/android/chess/play/PlayActivity;)Ljwtc/android/chess/views/ChessBoardView;
    .locals 0

    .line 53
    iget-object p0, p0, Ljwtc/android/chess/play/PlayActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    return-object p0
.end method


# virtual methods
.method public OnClockTime()V
    .locals 3

    .line 683
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->textViewOpponentClock:Landroid/widget/TextView;

    iget v1, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->localClock:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/LocalClockApi;->getBlackRemainingTime()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->localClock:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/LocalClockApi;->getWhiteRemainingTime()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->textViewMyClock:Landroid/widget/TextView;

    iget v1, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    if-nez v1, :cond_1

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->localClock:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/LocalClockApi;->getBlackRemainingTime()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->localClock:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/LocalClockApi;->getWhiteRemainingTime()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public OnDialogResult(ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 v1, 0x5

    const/4 v2, 0x6

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 676
    :cond_0
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/PlayActivity;->saveGameFromDialog(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 666
    :cond_1
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateClockByPrefs()V

    .line 667
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateGUI()V

    goto/16 :goto_0

    :cond_2
    const-string p1, "item"

    .line 630
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0e00e4

    .line 632
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 633
    new-instance p1, Ljwtc/android/chess/play/GameSettingsDialog;

    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-direct {p1, p0, p0, v0, p2}, Ljwtc/android/chess/play/GameSettingsDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILandroid/content/SharedPreferences;)V

    .line 634
    invoke-virtual {p1}, Ljwtc/android/chess/play/GameSettingsDialog;->show()V

    goto/16 :goto_0

    :cond_3
    const p2, 0x7f0e00e9

    .line 635
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 636
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {p1}, Ljwtc/android/chess/services/GameApi;->newGame()V

    const-wide/16 p1, 0x0

    .line 637
    iput-wide p1, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    goto/16 :goto_0

    :cond_4
    const p2, 0x7f0e00ea

    .line 638
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 639
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->showChess960Dialog()V

    goto/16 :goto_0

    :cond_5
    const p2, 0x7f0e00f5

    .line 640
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 641
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 642
    const-class p2, Ljwtc/android/chess/setup/SetupActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 643
    invoke-virtual {p0, p1, p2}, Ljwtc/android/chess/play/PlayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    const p2, 0x7f0e00f3

    .line 644
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 645
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->saveGame()V

    goto/16 :goto_0

    :cond_7
    const p2, 0x7f0e00e7

    .line 646
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 647
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 648
    const-class p2, Ljwtc/android/chess/GamesListActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p2, 0x2

    .line 649
    invoke-virtual {p0, p1, p2}, Ljwtc/android/chess/play/PlayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_8
    const p2, 0x7f0e00f0

    .line 650
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 651
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 652
    const-class p2, Ljwtc/android/chess/activities/GlobalPreferencesActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 653
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_9
    const p2, 0x7f0e00f4

    .line 654
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 655
    new-instance p1, Ljwtc/android/chess/play/ClockDialog;

    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-direct {p1, p0, p0, v2, p2}, Ljwtc/android/chess/play/ClockDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILandroid/content/SharedPreferences;)V

    .line 656
    invoke-virtual {p1}, Ljwtc/android/chess/play/ClockDialog;->show()V

    goto :goto_0

    :cond_a
    const p2, 0x7f0e00e6

    .line 657
    invoke-virtual {p0, p2}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 658
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 659
    const-class p2, Ljwtc/android/chess/HtmlActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 660
    sget-object p2, Ljwtc/android/chess/HtmlActivity;->HELP_MODE:Ljava/lang/String;

    const-string v0, "help_play"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 671
    :cond_b
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateGameSettingsByPrefs()V

    .line 672
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateGUI()V

    :cond_c
    :goto_0
    return-void
.end method

.method public OnEngineAborted()V
    .locals 1

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, v0}, Ljwtc/android/chess/play/PlayActivity;->toggleEngineProgress(Z)V

    return-void
.end method

.method public OnEngineError()V
    .locals 2

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, v0}, Ljwtc/android/chess/play/PlayActivity;->toggleEngineProgress(Z)V

    .line 473
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->textViewEngineValue:Landroid/widget/TextView;

    const-string v1, "Engine error!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public OnEngineInfo(Ljava/lang/String;)V
    .locals 1

    .line 457
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->textViewEngineValue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public OnEngineMove(I)V
    .locals 2

    const/4 v0, 0x0

    .line 443
    invoke-virtual {p0, v0}, Ljwtc/android/chess/play/PlayActivity;->toggleEngineProgress(Z)V

    .line 445
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/services/GameApi;->move(I)V

    .line 446
    invoke-static {p1}, Ljwtc/chess/Move;->getFrom(I)I

    move-result v0

    .line 447
    invoke-static {p1}, Ljwtc/chess/Move;->getTo(I)I

    move-result p1

    .line 448
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->highlightedPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 449
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->highlightedPositions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->highlightedPositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateGUI()V

    return-void
.end method

.method public OnEngineStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 462
    invoke-virtual {p0, v0}, Ljwtc/android/chess/play/PlayActivity;->toggleEngineProgress(Z)V

    return-void
.end method

.method public OnMove(I)V
    .locals 2

    .line 426
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->OnMove(I)V

    .line 428
    invoke-static {p1}, Ljwtc/chess/Move;->getFrom(I)I

    move-result v0

    .line 429
    invoke-static {p1}, Ljwtc/chess/Move;->getTo(I)I

    move-result p1

    .line 430
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->highlightedPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 431
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->highlightedPositions:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->highlightedPositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateGUI()V

    .line 436
    iget-boolean p1, p0, Ljwtc/android/chess/play/PlayActivity;->vsCPU:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p1}, Ljwtc/chess/JNI;->isEnded()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p1}, Ljwtc/chess/JNI;->getTurn()I

    move-result p1

    iget v0, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    if-eq p1, v0, :cond_0

    .line 437
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    invoke-virtual {p1}, Ljwtc/android/chess/engine/EngineApi;->play()V

    :cond_0
    return-void
.end method

.method public OnState()V
    .locals 0

    .line 478
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->OnState()V

    .line 480
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateGUI()V

    return-void
.end method

.method protected loadGame()V
    .locals 12

    .line 765
    iget-wide v0, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 766
    sget-object v0, Ljwtc/android/chess/helpers/MyPGNProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 767
    sget-object v8, Ljwtc/chess/PGNColumns;->COLUMNS:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Ljwtc/android/chess/play/PlayActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 770
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "_id"

    .line 772
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    const-string v1, "pgn"

    .line 773
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 774
    iget-object v2, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v2, v1}, Ljwtc/android/chess/services/GameApi;->loadPGN(Ljava/lang/String;)Z

    .line 776
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v2, "event"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Event"

    invoke-virtual {v1, v3, v2}, Ljwtc/android/chess/services/GameApi;->setPGNHeadProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v2, "white"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "White"

    invoke-virtual {v1, v3, v2}, Ljwtc/android/chess/services/GameApi;->setPGNHeadProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v2, "black"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Black"

    invoke-virtual {v1, v3, v2}, Ljwtc/android/chess/services/GameApi;->setPGNHeadProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v2, "date"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljwtc/android/chess/services/GameApi;->setDateLong(J)V

    goto :goto_0

    .line 782
    :cond_0
    iput-wide v2, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    goto :goto_0

    .line 785
    :cond_1
    iput-wide v2, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const-string v0, "PlayActivity"

    const-string v1, "onActivityResult"

    .line 388
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FEN"

    const-string v1, "boardNum"

    const-wide/16 v2, 0x0

    const-string v4, "game_id"

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    if-ne p2, v5, :cond_1

    .line 393
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 395
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    iput-wide v2, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    .line 399
    :goto_0
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 400
    iget-wide p2, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    invoke-interface {p1, v4, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 401
    invoke-interface {p1, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 p2, 0x0

    .line 402
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "playAsBlack"

    .line 405
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 406
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_0
    const/4 v7, 0x4

    if-ne p1, v7, :cond_1

    if-ne p2, v5, :cond_1

    const-string p1, "SCAN_RESULT"

    .line 410
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 414
    invoke-interface {p2, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 415
    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Ljwtc/android/chess/activities/ChessBoardActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0058

    .line 103
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->setContentView(I)V

    .line 105
    new-instance p1, Ljwtc/android/chess/services/GameApi;

    invoke-direct {p1}, Ljwtc/android/chess/services/GameApi;-><init>()V

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    .line 107
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->localClock:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {p1, p0}, Ljwtc/android/chess/services/LocalClockApi;->addListener(Ljwtc/android/chess/services/ClockListener;)V

    .line 109
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->afterCreate()V

    const p1, 0x7f080024

    .line 111
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->playButton:Landroid/widget/ImageButton;

    .line 112
    new-instance v0, Ljwtc/android/chess/play/PlayActivity$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/play/PlayActivity$1;-><init>(Ljwtc/android/chess/play/PlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080069

    .line 138
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->progressBarEngine:Landroid/widget/ProgressBar;

    .line 140
    new-instance p1, Ljwtc/android/chess/play/MenuDialog;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p0, v0}, Ljwtc/android/chess/play/MenuDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V

    const v0, 0x7f08001f

    .line 142
    invoke-virtual {p0, v0}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 143
    new-instance v1, Ljwtc/android/chess/play/PlayActivity$2;

    invoke-direct {v1, p0, p1}, Ljwtc/android/chess/play/PlayActivity$2;-><init>(Ljwtc/android/chess/play/PlayActivity;Ljwtc/android/chess/play/MenuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080077

    .line 150
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->seekBar:Landroid/widget/SeekBar;

    .line 151
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 152
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->seekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    const p1, 0x7f08018f

    .line 154
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ljwtc/android/chess/views/ChessPiecesStackView;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->topPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    const p1, 0x7f0800d1

    .line 155
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ljwtc/android/chess/views/ChessPiecesStackView;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->bottomPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    const p1, 0x7f080022

    .line 157
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 158
    new-instance v0, Ljwtc/android/chess/play/PlayActivity$3;

    invoke-direct {v0, p0}, Ljwtc/android/chess/play/PlayActivity$3;-><init>(Ljwtc/android/chess/play/PlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080027

    .line 165
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 166
    new-instance v0, Ljwtc/android/chess/play/PlayActivity$4;

    invoke-direct {v0, p0}, Ljwtc/android/chess/play/PlayActivity$4;-><init>(Ljwtc/android/chess/play/PlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080052

    .line 173
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewSwitcher;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->switchTurnMe:Landroid/widget/ViewSwitcher;

    const p1, 0x7f080053

    .line 174
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewSwitcher;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->switchTurnOpp:Landroid/widget/ViewSwitcher;

    const p1, 0x7f0800a1

    .line 176
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->textViewOpponent:Landroid/widget/TextView;

    const p1, 0x7f08009c

    .line 177
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->textViewMe:Landroid/widget/TextView;

    const p1, 0x7f08008d

    .line 179
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->textViewOpponentClock:Landroid/widget/TextView;

    const p1, 0x7f08008c

    .line 180
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->textViewMyClock:Landroid/widget/TextView;

    const p1, 0x7f080055

    .line 182
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableLayout;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->layoutBoardTop:Landroid/widget/TableLayout;

    const p1, 0x7f080054

    .line 183
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TableLayout;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->layoutBoardBottom:Landroid/widget/TableLayout;

    const p1, 0x7f080095

    .line 185
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->textViewEngineValue:Landroid/widget/TextView;

    const p1, 0x7f08000c

    .line 187
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 188
    new-instance v0, Ljwtc/android/chess/play/PlayActivity$5;

    invoke-direct {v0, p0}, Ljwtc/android/chess/play/PlayActivity$5;-><init>(Ljwtc/android/chess/play/PlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08000b

    .line 200
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 201
    new-instance v0, Ljwtc/android/chess/play/PlayActivity$6;

    invoke-direct {v0, p0}, Ljwtc/android/chess/play/PlayActivity$6;-><init>(Ljwtc/android/chess/play/PlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08000a

    .line 211
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 212
    new-instance v0, Ljwtc/android/chess/play/PlayActivity$7;

    invoke-direct {v0, p0}, Ljwtc/android/chess/play/PlayActivity$7;-><init>(Ljwtc/android/chess/play/PlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080032

    .line 222
    invoke-virtual {p0, p1}, Ljwtc/android/chess/play/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 223
    new-instance v0, Ljwtc/android/chess/play/PlayActivity$8;

    invoke-direct {v0, p0, p1}, Ljwtc/android/chess/play/PlayActivity$8;-><init>(Ljwtc/android/chess/play/PlayActivity;Landroid/widget/ImageButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 5

    .line 349
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    invoke-virtual {v0}, Ljwtc/android/chess/engine/EngineApi;->abort()V

    .line 350
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    invoke-virtual {v0, p0}, Ljwtc/android/chess/engine/EngineApi;->removeListener(Ljwtc/android/chess/engine/EngineListener;)V

    .line 352
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->localClock:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/LocalClockApi;->stopClock()V

    .line 354
    iget-wide v0, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 355
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 357
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 358
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->getWhite()Ljava/lang/String;

    move-result-object v1

    const-string v2, "white"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->getBlack()Ljava/lang/String;

    move-result-object v1

    const-string v2, "black"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->exportFullPGN()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pgn"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v2, "Event"

    invoke-virtual {v1, v2}, Ljwtc/android/chess/services/GameApi;->getPGNHeadProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 364
    invoke-virtual {p0, v0, v1}, Ljwtc/android/chess/play/PlayActivity;->saveGame(Landroid/content/ContentValues;Z)V

    .line 366
    :cond_0
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 367
    iget-wide v1, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    const-string v3, "game_id"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 368
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->exportFullPGN()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game_pgn"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    const-string v2, "FEN"

    .line 369
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 372
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->localClock:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/LocalClockApi;->getWhiteRemaining()J

    move-result-wide v1

    const-string v3, "clockWhiteMillies"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 373
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->localClock:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/LocalClockApi;->getBlackRemaining()J

    move-result-wide v1

    const-string v3, "clockBlackMillies"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 374
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->localClock:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/LocalClockApi;->getLastMeasureTime()J

    move-result-wide v1

    const-string v3, "clockStartTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 381
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 383
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onPause()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 487
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p1}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le p1, p2, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 490
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {p1, p2}, Ljwtc/android/chess/services/GameApi;->jumptoMove(I)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 12

    .line 234
    invoke-super {p0}, Ljwtc/android/chess/activities/ChessBoardActivity;->onResume()V

    .line 236
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FEN"

    const/4 v2, 0x0

    .line 239
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "UCIEngine"

    .line 245
    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "PlayActivity"

    if-eqz v7, :cond_1

    .line 247
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UCIEngine "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/data/jwtc.android.chess/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 250
    new-instance v10, Ljwtc/android/chess/engine/UCIEngine;

    invoke-direct {v10}, Ljwtc/android/chess/engine/UCIEngine;-><init>()V

    iput-object v10, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    .line 252
    move-object v11, v10

    check-cast v11, Ljwtc/android/chess/engine/UCIEngine;

    invoke-virtual {v10, v9}, Ljwtc/android/chess/engine/UCIEngine;->initEngine(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "UCI engine "

    if-eqz v9, :cond_0

    .line 254
    iget-object v9, p0, Ljwtc/android/chess/play/PlayActivity;->textViewEngineValue:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v9, p0, Ljwtc/android/chess/play/PlayActivity;->textViewEngineValue:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " failed to run!"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 260
    :cond_1
    new-instance v7, Ljwtc/android/chess/engine/LocalEngine;

    invoke-direct {v7}, Ljwtc/android/chess/engine/LocalEngine;-><init>()V

    iput-object v7, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    const-string v7, "OpeningDb"

    .line 263
    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 266
    :try_start_0
    iget-object v7, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    check-cast v7, Ljwtc/android/chess/engine/LocalEngine;

    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "db.bin"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "/data/data/jwtc.android.chess/db.bin"

    invoke-virtual {v7, v9, v10}, Ljwtc/android/chess/engine/LocalEngine;->installDb(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 268
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception installing db "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_2
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 272
    iget-object v9, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    check-cast v9, Ljwtc/android/chess/engine/LocalEngine;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljwtc/android/chess/engine/LocalEngine;->setOpeningDb(Ljava/lang/String;)V

    .line 276
    :goto_0
    iget-object v7, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    invoke-virtual {v7, p0}, Ljwtc/android/chess/engine/EngineApi;->addListener(Ljwtc/android/chess/engine/EngineListener;)V

    .line 278
    iget-object v7, p0, Ljwtc/android/chess/play/PlayActivity;->layoutBoardTop:Landroid/widget/TableLayout;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getDark()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TableLayout;->setBackgroundColor(I)V

    .line 279
    iget-object v7, p0, Ljwtc/android/chess/play/PlayActivity;->layoutBoardBottom:Landroid/widget/TableLayout;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getDark()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TableLayout;->setBackgroundColor(I)V

    .line 281
    iget-object v7, p0, Ljwtc/android/chess/play/PlayActivity;->textViewOpponent:Landroid/widget/TextView;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getHightlightColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v7, p0, Ljwtc/android/chess/play/PlayActivity;->textViewMe:Landroid/widget/TextView;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getHightlightColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    iget-object v7, p0, Ljwtc/android/chess/play/PlayActivity;->textViewOpponentClock:Landroid/widget/TextView;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getHightlightColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget-object v7, p0, Ljwtc/android/chess/play/PlayActivity;->textViewMyClock:Landroid/widget/TextView;

    invoke-static {}, Ljwtc/android/chess/constants/ColorSchemes;->getHightlightColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v7, "android.intent.action.SEND"

    .line 286
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    const-string v9, "onResume"

    const-wide/16 v10, 0x0

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 287
    iput-wide v10, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action send with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "application/x-chess-pgn"

    .line 289
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.TEXT"

    if-eqz v1, :cond_3

    .line 290
    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 292
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 293
    iget-object v2, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v2, v1}, Ljwtc/android/chess/services/GameApi;->loadPGN(Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 296
    :cond_3
    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 298
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 300
    iget-object v2, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v2, v1, v7}, Ljwtc/android/chess/services/GameApi;->initFEN(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_4
    if-eqz v6, :cond_5

    .line 304
    iput-wide v10, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :try_start_1
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 309
    invoke-static {v1}, Ljwtc/android/chess/helpers/PGNHelper;->getPGNFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 310
    iget-object v2, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v2, v1}, Ljwtc/android/chess/services/GameApi;->loadPGN(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading FEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iput-wide v10, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    .line 319
    iget-object v2, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v2, v1, v7}, Ljwtc/android/chess/services/GameApi;->initFEN(Ljava/lang/String;Z)Z

    goto :goto_1

    :cond_6
    const-string v1, "game_id"

    .line 321
    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    cmp-long v1, v3, v10

    if-lez v1, :cond_7

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading saved game "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->loadGame()V

    goto :goto_1

    :cond_7
    const-string v1, "game_pgn"

    .line 326
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pgn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_8

    .line 329
    iget-object v2, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v2, v1}, Ljwtc/android/chess/services/GameApi;->loadPGN(Ljava/lang/String;)Z

    goto :goto_1

    .line 331
    :cond_8
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->newGame()V

    .line 336
    :cond_9
    :goto_1
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateGameSettingsByPrefs()V

    .line 337
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateClockByPrefs()V

    const-string v1, "showECO"

    .line 339
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 340
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->ecoService:Ljwtc/android/chess/services/EcoService;

    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljwtc/android/chess/services/EcoService;->load(Landroid/content/res/AssetManager;)V

    :cond_a
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public requestMove(II)Z
    .locals 2

    .line 80
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getTurn()I

    move-result v0

    iget v1, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Ljwtc/android/chess/play/PlayActivity;->vsCPU:Z

    if-nez v0, :cond_1

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Ljwtc/android/chess/activities/ChessBoardActivity;->requestMove(II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 95
    :cond_1
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->rebuildBoard()V

    const/4 p1, 0x0

    return p1
.end method

.method public saveGame()V
    .locals 12

    .line 727
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v1, "Event"

    invoke-virtual {v0, v1}, Ljwtc/android/chess/services/GameApi;->getPGNHeadProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0e01a3

    .line 729
    invoke-virtual {p0, v0}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v5, v0

    .line 730
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/GameApi;->getWhite()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f0e01a5

    .line 732
    invoke-virtual {p0, v0}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v6, v0

    .line 733
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/GameApi;->getBlack()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const v0, 0x7f0e019f

    .line 735
    invoke-virtual {p0, v0}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v7, v0

    .line 737
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/GameApi;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3

    .line 739
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 741
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 742
    invoke-virtual {v8, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 744
    new-instance v0, Ljwtc/android/chess/play/SaveGameDialog;

    const/4 v4, 0x7

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->exportFullPGN()Ljava/lang/String;

    move-result-object v9

    iget-wide v1, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    const-wide/16 v10, 0x0

    cmp-long v3, v1, v10

    if-lez v3, :cond_4

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v10}, Ljwtc/android/chess/play/SaveGameDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/lang/String;Z)V

    .line 745
    invoke-virtual {v0}, Ljwtc/android/chess/play/SaveGameDialog;->show()V

    return-void
.end method

.method protected saveGame(Landroid/content/ContentValues;Z)V
    .locals 7

    .line 791
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FEN"

    const/4 v2, 0x0

    .line 792
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 793
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 795
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v1, "event"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "Event"

    invoke-virtual {v0, v3, v1}, Ljwtc/android/chess/services/GameApi;->setPGNHeadProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v1, "white"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "White"

    invoke-virtual {v0, v3, v1}, Ljwtc/android/chess/services/GameApi;->setPGNHeadProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v1, "black"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "Black"

    invoke-virtual {v0, v3, v1}, Ljwtc/android/chess/services/GameApi;->setPGNHeadProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v1, "date"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljwtc/android/chess/services/GameApi;->setDateLong(J)V

    .line 800
    iget-wide v0, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    if-nez p2, :cond_0

    .line 801
    sget-object p2, Ljwtc/android/chess/helpers/MyPGNProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 802
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 804
    :cond_0
    sget-object p2, Ljwtc/android/chess/helpers/MyPGNProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 805
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "_id"

    .line 806
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Ljwtc/android/chess/play/PlayActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 807
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 808
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 809
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    iput-wide p1, p0, Ljwtc/android/chess/play/PlayActivity;->lGameID:J

    :cond_1
    :goto_0
    return-void
.end method

.method protected saveGameFromDialog(Landroid/os/Bundle;)V
    .locals 5

    .line 751
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "copy"

    .line 752
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "date"

    .line 754
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "white"

    .line 755
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "black"

    .line 756
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pgn"

    .line 757
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rating"

    .line 758
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v2, "event"

    .line 759
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0, v0, v1}, Ljwtc/android/chess/play/PlayActivity;->saveGame(Landroid/content/ContentValues;Z)V

    return-void
.end method

.method protected showChess960Dialog()V
    .locals 4

    .line 591
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e01c5

    .line 592
    invoke-virtual {p0, v1}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 593
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    .line 594
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 595
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0e0054

    .line 596
    invoke-virtual {p0, v2}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljwtc/android/chess/play/PlayActivity$9;

    invoke-direct {v3, p0, v1}, Ljwtc/android/chess/play/PlayActivity$9;-><init>(Ljwtc/android/chess/play/PlayActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0e0058

    .line 612
    invoke-virtual {p0, v1}, Ljwtc/android/chess/play/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljwtc/android/chess/play/PlayActivity$10;

    invoke-direct {v2, p0}, Ljwtc/android/chess/play/PlayActivity$10;-><init>(Ljwtc/android/chess/play/PlayActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 621
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected toggleEngineProgress(Z)V
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toggleEngineProgress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 582
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 583
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->progressBarEngine:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 585
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->progressBarEngine:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 586
    iget-object p1, p0, Ljwtc/android/chess/play/PlayActivity;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected updateCapturedPieces()V
    .locals 7

    .line 535
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->topPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessPiecesStackView;->removeAllViews()V

    .line 536
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->bottomPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v0}, Ljwtc/android/chess/views/ChessPiecesStackView;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    .line 541
    iget-object v3, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v3, v1, v2}, Ljwtc/chess/JNI;->getNumCaptured(II)I

    move-result v3

    if-lez v3, :cond_3

    .line 544
    new-instance v4, Ljwtc/android/chess/views/ChessPieceView;

    invoke-direct {v4, p0, v1, v2, v2}, Ljwtc/android/chess/views/ChessPieceView;-><init>(Landroid/content/Context;III)V

    .line 545
    new-instance v5, Ljwtc/android/chess/views/CapturedCountView;

    invoke-direct {v5, p0, v3, v2}, Ljwtc/android/chess/views/CapturedCountView;-><init>(Landroid/content/Context;II)V

    .line 546
    iget v3, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    if-nez v1, :cond_0

    .line 548
    iget-object v3, p0, Ljwtc/android/chess/play/PlayActivity;->bottomPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v3, v4}, Ljwtc/android/chess/views/ChessPiecesStackView;->addView(Landroid/view/View;)V

    .line 549
    iget-object v3, p0, Ljwtc/android/chess/play/PlayActivity;->bottomPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v3, v5}, Ljwtc/android/chess/views/ChessPiecesStackView;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 551
    :cond_0
    iget-object v3, p0, Ljwtc/android/chess/play/PlayActivity;->topPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v3, v4}, Ljwtc/android/chess/views/ChessPiecesStackView;->addView(Landroid/view/View;)V

    .line 552
    iget-object v3, p0, Ljwtc/android/chess/play/PlayActivity;->topPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v3, v5}, Ljwtc/android/chess/views/ChessPiecesStackView;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    if-ne v1, v6, :cond_2

    .line 556
    iget-object v3, p0, Ljwtc/android/chess/play/PlayActivity;->bottomPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v3, v4}, Ljwtc/android/chess/views/ChessPiecesStackView;->addView(Landroid/view/View;)V

    .line 557
    iget-object v3, p0, Ljwtc/android/chess/play/PlayActivity;->bottomPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v3, v5}, Ljwtc/android/chess/views/ChessPiecesStackView;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 559
    :cond_2
    iget-object v3, p0, Ljwtc/android/chess/play/PlayActivity;->topPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v3, v4}, Ljwtc/android/chess/views/ChessPiecesStackView;->addView(Landroid/view/View;)V

    .line 560
    iget-object v3, p0, Ljwtc/android/chess/play/PlayActivity;->topPieces:Ljwtc/android/chess/views/ChessPiecesStackView;

    invoke-virtual {v3, v5}, Ljwtc/android/chess/views/ChessPiecesStackView;->addView(Landroid/view/View;)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected updateClockByPrefs()V
    .locals 14

    .line 690
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "clockIncrement"

    const-wide/16 v2, 0x0

    .line 691
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v1, "clockWhiteMillies"

    .line 692
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "clockBlackMillies"

    .line 693
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v1, "clockStartTime"

    .line 694
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 695
    iget-object v4, p0, Ljwtc/android/chess/play/PlayActivity;->localClock:Ljwtc/android/chess/services/LocalClockApi;

    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getTurn()I

    move-result v11

    invoke-virtual/range {v4 .. v13}, Ljwtc/android/chess/services/LocalClockApi;->startClock(JJJIJ)V

    return-void
.end method

.method protected updateGUI()V
    .locals 2

    .line 506
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/GameApi;->getPGNSize()I

    move-result v0

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 507
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->localClock:Ljwtc/android/chess/services/LocalClockApi;

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getTurn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljwtc/android/chess/services/LocalClockApi;->switchTurn(I)V

    .line 510
    :cond_0
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateSelectedSquares()V

    .line 511
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateCapturedPieces()V

    .line 512
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateSeekBar()V

    .line 513
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updateTurnSwitchers()V

    .line 514
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->updatePlayers()V

    .line 516
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->ecoService:Ljwtc/android/chess/services/EcoService;

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->getPGNEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljwtc/android/chess/services/EcoService;->getEco(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {p0, v0}, Ljwtc/android/chess/play/PlayActivity;->doToast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected updateGameSettingsByPrefs()V
    .locals 6

    .line 699
    invoke-virtual {p0}, Ljwtc/android/chess/play/PlayActivity;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "opponent"

    const/4 v2, 0x1

    .line 701
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljwtc/android/chess/play/PlayActivity;->vsCPU:Z

    const-string v1, "myTurn"

    .line 702
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput v1, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    const-string v1, "levelMode"

    .line 704
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "level"

    const/4 v4, 0x2

    .line 706
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "levelPly"

    .line 707
    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0xc

    new-array v4, v4, [I

    .line 708
    fill-array-data v4, :array_0

    if-ne v1, v2, :cond_0

    .line 711
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    aget v1, v4, v3

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljwtc/android/chess/engine/EngineApi;->setMsecs(I)V

    goto :goto_0

    .line 713
    :cond_0
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    invoke-virtual {v1, v0}, Ljwtc/android/chess/engine/EngineApi;->setPly(I)V

    .line 716
    :goto_0
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->chessBoardView:Ljwtc/android/chess/views/ChessBoardView;

    iget v1, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Ljwtc/android/chess/views/ChessBoardView;->setRotated(Z)V

    .line 718
    iget v0, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getTurn()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Ljwtc/android/chess/play/PlayActivity;->vsCPU:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->isEnded()I

    move-result v0

    if-nez v0, :cond_2

    .line 719
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    invoke-virtual {v0}, Ljwtc/android/chess/engine/EngineApi;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->myEngine:Ljwtc/android/chess/engine/EngineApi;

    invoke-virtual {v0}, Ljwtc/android/chess/engine/EngineApi;->play()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x8
        0xa
        0x14
        0x1e
        0x3c
        0x12c
        0x384
        0x708
    .end array-data
.end method

.method protected updatePlayers()V
    .locals 3

    .line 530
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->textViewOpponent:Landroid/widget/TextView;

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    iget v2, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    invoke-virtual {v1, v2}, Ljwtc/android/chess/services/GameApi;->getOpponentPlayerName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->textViewMe:Landroid/widget/TextView;

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    iget v2, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    invoke-virtual {v1, v2}, Ljwtc/android/chess/services/GameApi;->getMyPlayerName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateSeekBar()V
    .locals 2

    .line 523
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->getPGNSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 524
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSeekBar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected updateTurnSwitchers()V
    .locals 6

    .line 569
    iget-object v0, p0, Ljwtc/android/chess/play/PlayActivity;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getTurn()I

    move-result v0

    .line 571
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->switchTurnOpp:Landroid/widget/ViewSwitcher;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget v5, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    if-eq v5, v4, :cond_1

    :cond_0
    if-ne v0, v4, :cond_2

    iget v5, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    if-nez v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 572
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->switchTurnOpp:Landroid/widget/ViewSwitcher;

    if-nez v0, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 574
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->switchTurnMe:Landroid/widget/ViewSwitcher;

    if-ne v0, v4, :cond_4

    iget v5, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    if-eq v5, v4, :cond_5

    :cond_4
    if-nez v0, :cond_6

    iget v5, p0, Ljwtc/android/chess/play/PlayActivity;->myTurn:I

    if-nez v5, :cond_6

    :cond_5
    const/4 v2, 0x0

    :cond_6
    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Ljwtc/android/chess/play/PlayActivity;->switchTurnMe:Landroid/widget/ViewSwitcher;

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    return-void
.end method
