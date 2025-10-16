.class public Lcom/dozingcatsoftware/vectorpinball/model/GameState;
.super Ljava/lang/Object;
.source "GameState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/vectorpinball/model/GameState$MultiplierBehavior;
    }
.end annotation


# instance fields
.field ballNumber:I

.field extraBalls:I

.field gameInProgress:Z

.field multiplierBehavior:Lcom/dozingcatsoftware/vectorpinball/model/GameState$MultiplierBehavior;

.field paused:Z

.field score:J

.field scoreMultiplier:D

.field totalBalls:I

.field unlimitedBalls:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->gameInProgress:Z

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->paused:Z

    const/4 v0, 0x3

    .line 17
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->totalBalls:I

    return-void
.end method


# virtual methods
.method public addExtraBall()V
    .locals 1

    .line 62
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->extraBalls:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->extraBalls:I

    return-void
.end method

.method public addScore(J)V
    .locals 4

    .line 58
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->score:J

    long-to-double v0, v0

    long-to-double p1, p1

    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->scoreMultiplier:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, p1

    double-to-long p1, v0

    iput-wide p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->score:J

    return-void
.end method

.method public doNextBall()V
    .locals 8

    .line 35
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/model/GameState$1;->$SwitchMap$com$dozingcatsoftware$vectorpinball$model$GameState$MultiplierBehavior:[I

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->multiplierBehavior:Lcom/dozingcatsoftware/vectorpinball/model/GameState$MultiplierBehavior;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState$MultiplierBehavior;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-wide v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->scoreMultiplier:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->scoreMultiplier:D

    goto :goto_0

    .line 37
    :cond_1
    iput-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->scoreMultiplier:D

    .line 46
    :goto_0
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->extraBalls:I

    if-lez v0, :cond_2

    sub-int/2addr v0, v3

    .line 47
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->extraBalls:I

    goto :goto_2

    .line 49
    :cond_2
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->unlimitedBalls:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->ballNumber:I

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->totalBalls:I

    if-ge v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->gameInProgress:Z

    goto :goto_2

    .line 50
    :cond_4
    :goto_1
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->ballNumber:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->ballNumber:I

    :goto_2
    return-void
.end method

.method public getBallNumber()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->ballNumber:I

    return v0
.end method

.method public getExtraBalls()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->extraBalls:I

    return v0
.end method

.method public getMultiplierBehavior()Lcom/dozingcatsoftware/vectorpinball/model/GameState$MultiplierBehavior;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->multiplierBehavior:Lcom/dozingcatsoftware/vectorpinball/model/GameState$MultiplierBehavior;

    return-object v0
.end method

.method public getScore()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->score:J

    return-wide v0
.end method

.method public getScoreMultiplier()D
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->scoreMultiplier:D

    return-wide v0
.end method

.method public getTotalBalls()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->totalBalls:I

    return v0
.end method

.method public hasUnlimitedBalls()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->unlimitedBalls:Z

    return v0
.end method

.method public incrementScoreMultiplier()V
    .locals 4

    .line 66
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->scoreMultiplier:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->scoreMultiplier:D

    return-void
.end method

.method public isGameInProgress()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->gameInProgress:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->paused:Z

    return v0
.end method

.method public setBallNumber(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->ballNumber:I

    return-void
.end method

.method public setExtraBalls(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->extraBalls:I

    return-void
.end method

.method public setGameInProgress(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->gameInProgress:Z

    return-void
.end method

.method public setMultiplierBehavior(Lcom/dozingcatsoftware/vectorpinball/model/GameState$MultiplierBehavior;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->multiplierBehavior:Lcom/dozingcatsoftware/vectorpinball/model/GameState$MultiplierBehavior;

    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->paused:Z

    return-void
.end method

.method public setScore(J)V
    .locals 0

    .line 122
    iput-wide p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->score:J

    return-void
.end method

.method public setScoreMultiplier(D)V
    .locals 0

    .line 130
    iput-wide p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->scoreMultiplier:D

    return-void
.end method

.method public setTotalBalls(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->totalBalls:I

    return-void
.end method

.method public setUnlimitedBalls(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->unlimitedBalls:Z

    return-void
.end method

.method public startNewGame()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->score:J

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->ballNumber:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 27
    iput-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->scoreMultiplier:D

    .line 28
    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/model/GameState$MultiplierBehavior;->ROUND_HALF_DOWN:Lcom/dozingcatsoftware/vectorpinball/model/GameState$MultiplierBehavior;

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->multiplierBehavior:Lcom/dozingcatsoftware/vectorpinball/model/GameState$MultiplierBehavior;

    .line 30
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->gameInProgress:Z

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->paused:Z

    return-void
.end method
