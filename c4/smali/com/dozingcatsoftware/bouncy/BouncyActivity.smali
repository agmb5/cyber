.class public Lcom/dozingcatsoftware/bouncy/BouncyActivity;
.super Landroid/app/Activity;
.source "BouncyActivity.java"


# static fields
.field static final ACTIVITY_PREFERENCES:I = 0x1

.field static final END_GAME_DELAY_MS:J = 0x3e8L

.field static HIGHSCORES_PREFS_KEY:Ljava/lang/String; = null

.field static INITIAL_LEVEL_PREFS_KEY:Ljava/lang/String; = null

.field static MAX_NUM_HIGH_SCORES:I = 0x0

.field static OLD_HIGHSCORE_PREFS_KEY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BouncyActivity"

.field static final ZOOM_FACTOR:F = 1.5f


# instance fields
.field aboutButton:Landroid/widget/Button;

.field buttonPanel:Landroid/view/View;

.field canvasFieldView:Lcom/dozingcatsoftware/bouncy/CanvasFieldView;

.field currentLevel:I

.field endGameButton:Landroid/widget/Button;

.field endGameTime:Ljava/lang/Long;

.field field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

.field fieldDriver:Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;

.field fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

.field gl10Renderer:Lcom/dozingcatsoftware/bouncy/GL10Renderer;

.field gl20Renderer:Lcom/dozingcatsoftware/bouncy/GL20Renderer;

.field glFieldView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

.field handler:Landroid/os/Handler;

.field highScores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field numberOfLevels:I

.field orientationListener:Lcom/dozingcatsoftware/bouncy/OrientationListener;

.field preferencesButton:Landroid/widget/Button;

.field resumeGameButton:Landroid/widget/Button;

.field scoreView:Lcom/dozingcatsoftware/bouncy/ScoreView;

.field startGameButton:Landroid/widget/Button;

.field stringLookupFn:Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;

.field final supportsHapticFeedback:Z

.field switchTableButton:Landroid/widget/Button;

.field unlimitedBallsToggle:Landroid/widget/CheckBox;

.field useHapticFeedback:Z

.field final useOpenGL20:Z

.field useZoom:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/badlogic/gdx/physics/box2d/Box2D;->init()V

    const/4 v0, 0x5

    .line 75
    sput v0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->MAX_NUM_HIGH_SCORES:I

    const-string v0, "highScores"

    .line 76
    sput-object v0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->HIGHSCORES_PREFS_KEY:Ljava/lang/String;

    const-string v0, "highScore"

    .line 77
    sput-object v0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->OLD_HIGHSCORE_PREFS_KEY:Ljava/lang/String;

    const-string v0, "initialLevel"

    .line 78
    sput-object v0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->INITIAL_LEVEL_PREFS_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->useOpenGL20:Z

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->handler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda1;-><init>(Lcom/dozingcatsoftware/bouncy/BouncyActivity;)V

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->stringLookupFn:Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;

    .line 70
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/model/Field;

    sget-object v3, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda8;->INSTANCE:Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda8;

    iget-object v4, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->stringLookupFn:Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;

    new-instance v5, Lcom/dozingcatsoftware/bouncy/VPSoundpool$Player;

    invoke-direct {v5}, Lcom/dozingcatsoftware/bouncy/VPSoundpool$Player;-><init>()V

    invoke-direct {v0, v3, v4, v5}, Lcom/dozingcatsoftware/vectorpinball/model/Field;-><init>(Lj$/util/function/LongSupplier;Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;)V

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    .line 73
    iput v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->currentLevel:I

    .line 80
    iput-boolean v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->useZoom:Z

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->supportsHapticFeedback:Z

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->endGameTime:Ljava/lang/Long;

    .line 90
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldDriver:Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;

    .line 91
    new-instance v0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-direct {v0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    return-void
.end method

.method static synthetic lambda$onCreate$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 174
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public doAbout(Landroid/view/View;)V
    .locals 0

    .line 551
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->gotoAbout()V

    return-void
.end method

.method public doEndGame(Landroid/view/View;)V
    .locals 1

    .line 540
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->unpauseGame()V

    .line 541
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    monitor-enter p1

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->endGame()V

    .line 543
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doPreferences(Landroid/view/View;)V
    .locals 0

    .line 547
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->gotoPreferences()V

    return-void
.end method

.method public doStartGame(Landroid/view/View;)V
    .locals 6

    .line 506
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->unpauseGame()V

    return-void

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->endGameTime:Ljava/lang/Long;

    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->endGameTime:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    goto :goto_1

    .line 514
    :cond_1
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result p1

    if-nez p1, :cond_3

    .line 522
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    monitor-enter p1

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->buttonPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 524
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->resetFieldForCurrentLevel()V

    .line 526
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->unlimitedBallsToggle:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->startGameWithUnlimitedBalls()V

    goto :goto_0

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->startGame()V

    .line 532
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    invoke-static {}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->playStart()V

    const/4 p1, 0x0

    .line 534
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->endGameTime:Ljava/lang/Long;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 532
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public doSwitchTable(Landroid/view/View;)V
    .locals 2

    .line 569
    iget p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->currentLevel:I

    iget v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->numberOfLevels:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v1, p1

    :goto_0
    iput v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->currentLevel:I

    .line 570
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    monitor-enter p1

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->resetFieldForCurrentLevel()V

    .line 572
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    iget p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->currentLevel:I

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->setInitialLevel(I)V

    .line 574
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->highScoresFromPreferencesForCurrentLevel()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->highScores:Ljava/util/List;

    .line 575
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->scoreView:Lcom/dozingcatsoftware/bouncy/ScoreView;

    invoke-virtual {v0, p1}, Lcom/dozingcatsoftware/bouncy/ScoreView;->setHighScores(Ljava/util/List;)V

    .line 577
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldDriver:Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->resetFrameRate()V

    return-void

    :catchall_0
    move-exception v0

    .line 572
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getInitialLevel()I
    .locals 3

    .line 491
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 492
    sget-object v1, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->INITIAL_LEVEL_PREFS_KEY:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 493
    iget v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->numberOfLevels:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :cond_1
    :goto_0
    return v2
.end method

.method gotoAbout()V
    .locals 1

    .line 343
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->currentLevel:I

    invoke-static {p0, v0}, Lcom/dozingcatsoftware/bouncy/AboutActivity;->startForLevel(Landroid/content/Context;I)Landroid/content/Intent;

    return-void
.end method

.method gotoPreferences()V
    .locals 3

    .line 338
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dozingcatsoftware/bouncy/BouncyPreferences;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 339
    invoke-virtual {p0, v0, v1}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method highScorePrefsKeyForLevel(I)Ljava/lang/String;
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->HIGHSCORES_PREFS_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method highScoresFromPreferences(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 434
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 435
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->highScorePrefsKeyForLevel(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-wide/16 v2, 0x0

    if-lez v1, :cond_1

    :try_start_0
    const-string v0, ","

    .line 438
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    array-length v1, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, p1, v4

    .line 441
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 446
    :catch_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 451
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->OLD_HIGHSCORE_PREFS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->currentLevel:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 452
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method highScoresFromPreferencesForCurrentLevel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 469
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->currentLevel:I

    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->highScoresFromPreferences(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$new$0$com-dozingcatsoftware-bouncy-BouncyActivity(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onCreate$1$com-dozingcatsoftware-bouncy-BouncyActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/dozingcatsoftware/vectorpinball/util/IOUtils;->utf8FromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method synthetic lambda$onCreate$2$com-dozingcatsoftware-bouncy-BouncyActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->doStartGame(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreate$4$com-dozingcatsoftware-bouncy-BouncyActivity()V
    .locals 3

    .line 205
    iget-boolean v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->supportsHapticFeedback:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->useHapticFeedback:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->scoreView:Lcom/dozingcatsoftware/bouncy/ScoreView;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/dozingcatsoftware/bouncy/ScoreView;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 328
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->updateFromPreferences()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "os.arch"

    .line 99
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App started, os.arch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BouncyActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030001

    .line 103
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->setContentView(I)V

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/dozingcatsoftware/bouncy/FieldLayoutReader;->getNumberOfLevels(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->numberOfLevels:I

    .line 110
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->getInitialLevel()I

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->currentLevel:I

    .line 111
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->resetFieldForCurrentLevel()V

    const v0, 0x7f020003

    .line 113
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->canvasFieldView:Lcom/dozingcatsoftware/bouncy/CanvasFieldView;

    .line 114
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->setManager(Lcom/dozingcatsoftware/bouncy/FieldViewManager;)V

    const v0, 0x7f020005

    .line 116
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/bouncy/GLFieldView;

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->glFieldView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    .line 117
    iget-boolean v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->useOpenGL20:Z

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Lcom/dozingcatsoftware/bouncy/GL20Renderer;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->glFieldView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    new-instance v2, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda7;-><init>(Lcom/dozingcatsoftware/bouncy/BouncyActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;-><init>(Lcom/dozingcatsoftware/bouncy/GLFieldView;Lj$/util/function/Function;)V

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->gl20Renderer:Lcom/dozingcatsoftware/bouncy/GL20Renderer;

    .line 127
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/bouncy/GL20Renderer;->setManager(Lcom/dozingcatsoftware/bouncy/FieldViewManager;)V

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Lcom/dozingcatsoftware/bouncy/GL10Renderer;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->glFieldView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    invoke-direct {v0, v1}, Lcom/dozingcatsoftware/bouncy/GL10Renderer;-><init>(Lcom/dozingcatsoftware/bouncy/GLFieldView;)V

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->gl10Renderer:Lcom/dozingcatsoftware/bouncy/GL10Renderer;

    .line 131
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/bouncy/GL10Renderer;->setManager(Lcom/dozingcatsoftware/bouncy/FieldViewManager;)V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->setField(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 135
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    new-instance v1, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda2;-><init>(Lcom/dozingcatsoftware/bouncy/BouncyActivity;)V

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->setStartGameAction(Ljava/lang/Runnable;)V

    const v0, 0x7f020008

    .line 137
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/bouncy/ScoreView;

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->scoreView:Lcom/dozingcatsoftware/bouncy/ScoreView;

    .line 138
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/bouncy/ScoreView;->setField(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 140
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldDriver:Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->setField(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 141
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldDriver:Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda5;-><init>(Lcom/dozingcatsoftware/bouncy/FieldViewManager;)V

    invoke-virtual {v0, v2}, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->setDrawFunction(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->highScoresFromPreferencesForCurrentLevel()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->highScores:Ljava/util/List;

    .line 144
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->scoreView:Lcom/dozingcatsoftware/bouncy/ScoreView;

    invoke-virtual {v1, v0}, Lcom/dozingcatsoftware/bouncy/ScoreView;->setHighScores(Ljava/util/List;)V

    const v0, 0x7f020002

    .line 146
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->buttonPanel:Landroid/view/View;

    const v0, 0x7f020009

    .line 147
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->startGameButton:Landroid/widget/Button;

    const v0, 0x7f020007

    .line 148
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->resumeGameButton:Landroid/widget/Button;

    const v0, 0x7f020004

    .line 149
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->endGameButton:Landroid/widget/Button;

    const v0, 0x7f02000a

    .line 150
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->switchTableButton:Landroid/widget/Button;

    const/high16 v0, 0x7f020000

    .line 151
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->aboutButton:Landroid/widget/Button;

    const v0, 0x7f020006

    .line 152
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->preferencesButton:Landroid/widget/Button;

    const v0, 0x7f02000b

    .line 153
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->unlimitedBallsToggle:Landroid/widget/CheckBox;

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    .line 165
    iget-object v3, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->startGameButton:Landroid/widget/Button;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->resumeGameButton:Landroid/widget/Button;

    aput-object v2, v1, p1

    const/4 p1, 0x2

    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->endGameButton:Landroid/widget/Button;

    aput-object v2, v1, p1

    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->switchTableButton:Landroid/widget/Button;

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 p1, 0x4

    iget-object v3, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->aboutButton:Landroid/widget/Button;

    aput-object v3, v1, p1

    const/4 p1, 0x5

    iget-object v3, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->preferencesButton:Landroid/widget/Button;

    aput-object v3, v1, p1

    const/4 p1, 0x6

    aput-object v0, v1, p1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 168
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 169
    sget-object v1, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->updateFromPreferences()V

    .line 202
    invoke-static {p0}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->initSounds(Landroid/content/Context;)V

    .line 203
    new-instance p1, Ljava/lang/Thread;

    sget-object v0, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda6;->INSTANCE:Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda6;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 204
    new-instance p1, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda3;-><init>(Lcom/dozingcatsoftware/bouncy/BouncyActivity;)V

    sput-object p1, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->hapticFn:Ljava/lang/Runnable;

    .line 211
    invoke-virtual {p0, v2}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->setVolumeControlStream(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 323
    invoke-static {}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->cleanup()V

    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_1

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->pauseGame()V

    const/4 p1, 0x1

    return p1

    .line 264
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 0

    .line 229
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->pauseGame()V

    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 218
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setSystemUiVisibility"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->scoreView:Lcom/dozingcatsoftware/bouncy/ScoreView;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :catch_0
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldDriver:Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->resetFrameRate()V

    .line 225
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->updateButtons()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->pauseGame()V

    goto :goto_0

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->glFieldView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->onResume()V

    .line 246
    :cond_1
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->draw()V

    .line 247
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->updateButtons()V

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->unpauseGame()V

    :goto_0
    return-void
.end method

.method public pauseGame()V
    .locals 2

    .line 269
    invoke-static {}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->pauseMusic()V

    .line 270
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 273
    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->setPaused(Z)V

    .line 275
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->orientationListener:Lcom/dozingcatsoftware/bouncy/OrientationListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/OrientationListener;->stop()V

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldDriver:Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->stop()V

    .line 277
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->glFieldView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->onPause()V

    .line 279
    :cond_3
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->updateButtons()V

    return-void
.end method

.method resetFieldForCurrentLevel()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    iget v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->currentLevel:I

    invoke-static {p0, v1}, Lcom/dozingcatsoftware/bouncy/FieldLayoutReader;->layoutMapForLevel(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resetForLayoutMap(Ljava/util/Map;)V

    return-void
.end method

.method public scoreViewClicked(Landroid/view/View;)V
    .locals 0

    .line 555
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 556
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->unpauseGame()V

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->pauseGame()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 564
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->doStartGame(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method setInitialLevel(I)V
    .locals 2

    .line 498
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 499
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 500
    sget-object v1, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->INITIAL_LEVEL_PREFS_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 501
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method tick()V
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->scoreView:Lcom/dozingcatsoftware/bouncy/ScoreView;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/ScoreView;->invalidate()V

    .line 390
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->scoreView:Lcom/dozingcatsoftware/bouncy/ScoreView;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldDriver:Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->getAverageFPS()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dozingcatsoftware/bouncy/ScoreView;->setFPS(D)V

    .line 391
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->scoreView:Lcom/dozingcatsoftware/bouncy/ScoreView;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/bouncy/ScoreView;->setDebugMessage(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->updateHighScoreAndButtonPanel()V

    .line 393
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda4;-><init>(Lcom/dozingcatsoftware/bouncy/BouncyActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unpauseGame()V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->setPaused(Z)V

    .line 286
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity$$ExternalSyntheticLambda4;-><init>(Lcom/dozingcatsoftware/bouncy/BouncyActivity;)V

    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->orientationListener:Lcom/dozingcatsoftware/bouncy/OrientationListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/OrientationListener;->start()V

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldDriver:Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->start()V

    .line 290
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->glFieldView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->onResume()V

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->updateButtons()V

    return-void
.end method

.method updateButtons()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isPaused()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->buttonPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->startGameButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->resumeGameButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->endGameButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->switchTableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->unlimitedBallsToggle:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->resumeGameButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->buttonPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->buttonPanel:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->startGameButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->resumeGameButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->endGameButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->switchTableButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->unlimitedBallsToggle:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->startGameButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :goto_0
    return-void
.end method

.method updateFromPreferences()V
    .locals 5

    .line 348
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    const-string v2, "independentFlippers"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->setIndependentFlippers(Z)V

    .line 350
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->scoreView:Lcom/dozingcatsoftware/bouncy/ScoreView;

    const-string v2, "showFPS"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/bouncy/ScoreView;->setShowFPS(Z)V

    :try_start_0
    const-string v1, "lineWidth"

    const-string v2, "0"

    .line 356
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 359
    :goto_0
    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getCustomLineWidth()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    invoke-virtual {v2, v1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->setCustomLineWidth(I)V

    :cond_0
    const-string v1, "useOpenGL"

    .line 363
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->glFieldView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->canvasFieldView:Lcom/dozingcatsoftware/bouncy/CanvasFieldView;

    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->setVisibility(I)V

    .line 367
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->glFieldView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    invoke-virtual {v1, v4}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    iget-boolean v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->useOpenGL20:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->gl20Renderer:Lcom/dozingcatsoftware/bouncy/GL20Renderer;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->gl10Renderer:Lcom/dozingcatsoftware/bouncy/GL10Renderer;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->setFieldRenderer(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V

    goto :goto_2

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->canvasFieldView:Lcom/dozingcatsoftware/bouncy/CanvasFieldView;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->glFieldView:Lcom/dozingcatsoftware/bouncy/GLFieldView;

    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/bouncy/GLFieldView;->setVisibility(I)V

    .line 374
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->canvasFieldView:Lcom/dozingcatsoftware/bouncy/CanvasFieldView;

    invoke-virtual {v1, v4}, Lcom/dozingcatsoftware/bouncy/CanvasFieldView;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->canvasFieldView:Lcom/dozingcatsoftware/bouncy/CanvasFieldView;

    invoke-virtual {v1, v2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->setFieldRenderer(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V

    :cond_3
    :goto_2
    const-string v1, "zoom"

    .line 379
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->useZoom:Z

    .line 380
    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->fieldViewManager:Lcom/dozingcatsoftware/bouncy/FieldViewManager;

    if-eqz v1, :cond_4

    const/high16 v1, 0x3fc00000    # 1.5f

    goto :goto_3

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_3
    invoke-virtual {v2, v1}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->setZoom(F)V

    const-string v1, "sound"

    .line 382
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->setSoundEnabled(Z)V

    const-string v1, "music"

    .line 383
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->setMusicEnabled(Z)V

    const-string v1, "haptic"

    .line 384
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->useHapticFeedback:Z

    return-void
.end method

.method updateHighScore(IJ)V
    .locals 2

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->highScores:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 475
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 477
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 478
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sget p3, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->MAX_NUM_HIGH_SCORES:I

    if-le p2, p3, :cond_0

    const/4 p2, 0x0

    .line 479
    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 481
    :cond_0
    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->highScores:Ljava/util/List;

    .line 482
    invoke-virtual {p0, p1, v0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->writeHighScoresToPreferences(ILjava/util/List;)V

    .line 483
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->scoreView:Lcom/dozingcatsoftware/bouncy/ScoreView;

    iget-object p2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->highScores:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/bouncy/ScoreView;->setHighScores(Ljava/util/List;)V

    return-void
.end method

.method updateHighScoreAndButtonPanel()V
    .locals 6

    .line 402
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->buttonPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v1

    .line 405
    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result v2

    if-nez v2, :cond_2

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->endGameTime:Ljava/lang/Long;

    .line 408
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->updateButtons()V

    .line 411
    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->hasUnlimitedBalls()Z

    move-result v1

    if-nez v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->getScore()J

    move-result-wide v1

    .line 415
    iget-object v3, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->highScores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    iget-object v3, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->highScores:Ljava/util/List;

    .line 416
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->MAX_NUM_HIGH_SCORES:I

    if-ge v3, v4, :cond_2

    .line 417
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->updateHighScoreForCurrentLevel(J)V

    .line 421
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateHighScoreForCurrentLevel(J)V
    .locals 1

    .line 487
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->currentLevel:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->updateHighScore(IJ)V

    return-void
.end method

.method writeHighScoresToPreferences(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 458
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 459
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, ","

    .line 460
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 463
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 464
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/bouncy/BouncyActivity;->highScorePrefsKeyForLevel(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
