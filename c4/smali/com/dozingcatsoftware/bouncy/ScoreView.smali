.class public Lcom/dozingcatsoftware/bouncy/ScoreView;
.super Landroid/view/View;
.source "ScoreView.java"


# static fields
.field static final HIGH_SCORE_MESSAGE:I = 0x2

.field static final LAST_SCORE_MESSAGE:I = 0x1

.field static SCORE_FORMAT:Ljava/text/NumberFormat;

.field static final TOUCH_TO_START_MESSAGE:I


# instance fields
.field debugMessage:Ljava/lang/String;

.field field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

.field fps:D

.field fpsPaint:Landroid/graphics/Paint;

.field gameOverMessageCycleTime:I

.field gameOverMessageIndex:I

.field highScoreIndex:I

.field highScores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field lastUpdateTime:Ljava/lang/Long;

.field multiplierPaint:Landroid/graphics/Paint;

.field remainingBallPaint:Landroid/graphics/Paint;

.field showFPS:Z

.field textPaint:Landroid/graphics/Paint;

.field textRect:Landroid/graphics/Rect;

.field usedBallPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/dozingcatsoftware/bouncy/ScoreView;->SCORE_FORMAT:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->textPaint:Landroid/graphics/Paint;

    .line 27
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->textRect:Landroid/graphics/Rect;

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->fpsPaint:Landroid/graphics/Paint;

    .line 31
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->usedBallPaint:Landroid/graphics/Paint;

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    .line 33
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->multiplierPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->gameOverMessageIndex:I

    .line 43
    iput p2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScoreIndex:I

    const/16 v0, 0xdac

    .line 44
    iput v0, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->gameOverMessageCycleTime:I

    .line 47
    iput-boolean p2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->showFPS:Z

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->debugMessage:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->textPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v1, v1, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 56
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->textPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v3, "window"

    .line 60
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 61
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 62
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->textPaint:Landroid/graphics/Paint;

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float v3, v3, v4

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->fpsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 65
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->fpsPaint:Landroid/graphics/Paint;

    iget p2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41100000    # 9.0f

    mul-float p2, p2, v3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->fpsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->multiplierPaint:Landroid/graphics/Paint;

    const/16 p2, 0x20

    const/16 v3, 0xe0

    invoke-virtual {p1, v1, p2, v3, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 69
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->multiplierPaint:Landroid/graphics/Paint;

    iget p2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->multiplierPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->usedBallPaint:Landroid/graphics/Paint;

    const/16 p2, 0x80

    invoke-virtual {p1, v1, p2, p2, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 73
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->usedBallPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->usedBallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 76
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private formatScore(JZ)Ljava/lang/String;
    .locals 1

    .line 239
    sget-object v0, Lcom/dozingcatsoftware/bouncy/ScoreView;->SCORE_FORMAT:Ljava/text/NumberFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method currentMillis()J
    .locals 2

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method cycleGameOverMessage(J)V
    .locals 6

    .line 183
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->gameOverMessageIndex:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    .line 200
    iget p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScoreIndex:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScoreIndex:I

    .line 201
    iget-object p2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScores:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScores:Ljava/util/List;

    iget p2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScoreIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v0, p1, v3

    if-gtz v0, :cond_5

    .line 202
    :cond_0
    iput v5, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScoreIndex:I

    .line 203
    iput v5, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->gameOverMessageIndex:I

    goto :goto_0

    .line 207
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown gameOverMessageIndex: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->gameOverMessageIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_2
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScores:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v0, p1, v3

    if-lez v0, :cond_5

    .line 195
    iput v1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->gameOverMessageIndex:I

    .line 196
    iput v5, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScoreIndex:I

    goto :goto_0

    :cond_3
    cmp-long v0, p1, v3

    if-lez v0, :cond_4

    .line 186
    iput v2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->gameOverMessageIndex:I

    goto :goto_0

    .line 188
    :cond_4
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScores:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v0, p1, v3

    if-lez v0, :cond_5

    .line 189
    iput v1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->gameOverMessageIndex:I

    .line 190
    iput v5, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScoreIndex:I

    :cond_5
    :goto_0
    return-void
.end method

.method displayedGameOverMessage(JZ)Ljava/lang/String;
    .locals 5

    .line 214
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->gameOverMessageIndex:I

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 p1, 0x2

    if-ne v0, p1, :cond_1

    .line 222
    iget p2, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScoreIndex:I

    iget-object p3, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScores:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 224
    iget-object p3, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScores:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v1}, Lcom/dozingcatsoftware/bouncy/ScoreView;->formatScore(JZ)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/ScoreView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060039

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/ScoreView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f060022

    new-array p1, p1, [Ljava/lang/Object;

    add-int/2addr p2, v2

    .line 230
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    aput-object p3, p1, v2

    .line 229
    invoke-virtual {v0, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 233
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown gameOverMessageIndex: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->gameOverMessageIndex:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/ScoreView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f06001a

    new-array v2, v2, [Ljava/lang/Object;

    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/dozingcatsoftware/bouncy/ScoreView;->formatScore(JZ)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    .line 218
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 216
    :cond_3
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/ScoreView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f06003a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 89
    iget-object v2, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    monitor-enter v2

    .line 91
    :try_start_0
    iget-object v3, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameMessage()Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;

    move-result-object v3

    .line 92
    iget-object v4, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v4

    .line 93
    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result v5

    .line 94
    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->getTotalBalls()I

    move-result v6

    .line 95
    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->hasUnlimitedBalls()Z

    move-result v7

    .line 96
    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->getBallNumber()I

    move-result v8

    .line 97
    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->getScoreMultiplier()D

    move-result-wide v9

    .line 98
    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->getScore()J

    move-result-wide v11

    .line 99
    iget-object v4, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v14, 0x0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 100
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xff

    const/16 v15, 0x8

    .line 102
    invoke-virtual {v0, v2, v15, v15, v15}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    if-eqz v3, :cond_1

    .line 103
    iget-object v2, v3, Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;->text:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_5

    if-eqz v5, :cond_2

    .line 108
    invoke-direct {v1, v11, v12, v7}, Lcom/dozingcatsoftware/bouncy/ScoreView;->formatScore(JZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 111
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/dozingcatsoftware/bouncy/ScoreView;->currentMillis()J

    move-result-wide v2

    .line 112
    iget-object v15, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->lastUpdateTime:Ljava/lang/Long;

    if-nez v15, :cond_3

    .line 113
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->lastUpdateTime:Ljava/lang/Long;

    move-wide/from16 v17, v9

    goto :goto_2

    .line 115
    :cond_3
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long v15, v2, v15

    iget v13, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->gameOverMessageCycleTime:I

    move-wide/from16 v17, v9

    int-to-long v9, v13

    cmp-long v13, v15, v9

    if-lez v13, :cond_4

    .line 116
    invoke-virtual {v1, v11, v12}, Lcom/dozingcatsoftware/bouncy/ScoreView;->cycleGameOverMessage(J)V

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->lastUpdateTime:Ljava/lang/Long;

    .line 119
    :cond_4
    :goto_2
    invoke-virtual {v1, v11, v12, v7}, Lcom/dozingcatsoftware/bouncy/ScoreView;->displayedGameOverMessage(JZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    :goto_3
    move-wide/from16 v17, v9

    .line 123
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/dozingcatsoftware/bouncy/ScoreView;->getWidth()I

    move-result v3

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/dozingcatsoftware/bouncy/ScoreView;->getHeight()I

    move-result v9

    .line 125
    iget-object v10, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    iget-object v12, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v2, v14, v11, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v3, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float v11, v3, v10

    .line 127
    iget-object v12, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->textRect:Landroid/graphics/Rect;

    .line 129
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    sub-float/2addr v11, v12

    int-to-float v9, v9

    div-float v12, v9, v10

    iget-object v13, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v10

    add-float/2addr v12, v13

    iget-object v13, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->textPaint:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {v0, v2, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 131
    iget-boolean v2, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->showFPS:Z

    const v11, 0x3ca3d70a    # 0.02f

    if-eqz v2, :cond_6

    iget-wide v12, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->fps:D

    const-wide/16 v15, 0x0

    cmpl-double v2, v12, v15

    if-lez v2, :cond_6

    const-string v2, "%.1f fps"

    const/4 v15, 0x1

    new-array v10, v15, [Ljava/lang/Object;

    .line 132
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v14

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    mul-float v10, v3, v11

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float v12, v12, v9

    iget-object v13, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->fpsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v10, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 134
    :cond_6
    iget-object v2, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->debugMessage:Ljava/lang/String;

    if-eqz v2, :cond_7

    mul-float v11, v11, v3

    const/high16 v10, 0x3f400000    # 0.75f

    mul-float v10, v10, v9

    .line 135
    iget-object v12, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->fpsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v11, v10, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    if-eqz v5, :cond_d

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/dozingcatsoftware/bouncy/ScoreView;->getWidth()I

    move-result v2

    div-int/lit16 v2, v2, 0xf0

    .line 140
    iget-object v5, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->usedBallPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object v5, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, 0x42960000    # 75.0f

    div-float v2, v3, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v10, v2, v5

    add-float v5, v10, v2

    sub-float v11, v9, v5

    sub-float/2addr v3, v10

    sub-float/2addr v3, v2

    if-eqz v7, :cond_8

    const/4 v4, 0x4

    :goto_5
    if-ltz v4, :cond_b

    int-to-float v6, v4

    mul-float v6, v6, v5

    sub-float v6, v3, v6

    .line 152
    iget-object v7, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6, v11, v2, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v6

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_b

    int-to-float v10, v7

    mul-float v10, v10, v5

    sub-float v10, v3, v10

    add-int v12, v8, v7

    add-int/2addr v12, v4

    if-gt v12, v6, :cond_9

    const/4 v15, 0x1

    goto :goto_7

    :cond_9
    const/4 v15, 0x0

    :goto_7
    if-eqz v15, :cond_a

    .line 162
    iget-object v12, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->remainingBallPaint:Landroid/graphics/Paint;

    goto :goto_8

    :cond_a
    iget-object v12, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->usedBallPaint:Landroid/graphics/Paint;

    .line 161
    :goto_8
    invoke-virtual {v0, v10, v11, v2, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v17, v6

    if-lez v2, :cond_d

    move-wide/from16 v6, v17

    double-to-int v2, v6

    int-to-double v10, v2

    cmpl-double v4, v6, v10

    if-nez v4, :cond_c

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_c
    const-string v2, "%.2fx"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v14

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_9
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v5, v4

    sub-float/2addr v3, v5

    const v4, 0x3ecccccd    # 0.4f

    mul-float v9, v9, v4

    .line 171
    iget-object v4, v1, Lcom/dozingcatsoftware/bouncy/ScoreView;->multiplierPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_d
    return-void

    :catchall_0
    move-exception v0

    .line 100
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method public setDebugMessage(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->debugMessage:Ljava/lang/String;

    return-void
.end method

.method public setFPS(D)V
    .locals 0

    .line 252
    iput-wide p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->fps:D

    return-void
.end method

.method public setField(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    return-void
.end method

.method public setHighScores(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->highScores:Ljava/util/List;

    return-void
.end method

.method public setShowFPS(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/dozingcatsoftware/bouncy/ScoreView;->showFPS:Z

    return-void
.end method
