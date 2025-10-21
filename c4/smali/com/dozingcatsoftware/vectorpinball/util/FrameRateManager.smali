.class public Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;
.super Ljava/lang/Object;
.source "FrameRateManager.java"


# static fields
.field static final BILLION:J = 0x3b9aca00L

.field static final MILLION:J = 0xf4240L

.field static final MIN_SLEEP_NANOS:J = 0x186a0L


# instance fields
.field allowLockingFrameRate:Z

.field allowReducingFrameRate:Z

.field currentFPS:D

.field currentNanosPerFrame:J

.field currentRateIndex:I

.field frameHistorySize:I

.field frameRateLocked:Z

.field goodFrames:I

.field maxGoodFrames:I

.field maxSlowFrames:I

.field minimumFrameRates:[D

.field nanoTimeFn:Lj$/util/function/LongSupplier;

.field previousFrameTimestamps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field resetRequested:Z

.field slowFrames:I

.field targetFrameRateFudgeFactor:D

.field targetFrameRates:[D

.field totalFrames:J

.field unfudgedTargetFrameRates:[D


# direct methods
.method public constructor <init>(Lj$/util/function/LongSupplier;[D[D)V
    .locals 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentRateIndex:I

    const-wide v1, 0x3ff03d70a3d70a3dL    # 1.015

    .line 29
    iput-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->targetFrameRateFudgeFactor:D

    .line 32
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    const/16 v1, 0xa

    .line 34
    iput v1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->frameHistorySize:I

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->allowReducingFrameRate:Z

    .line 36
    iput-boolean v1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->allowLockingFrameRate:Z

    .line 38
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->frameRateLocked:Z

    const/16 v2, 0x1f4

    .line 40
    iput v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->maxGoodFrames:I

    const/16 v2, 0x96

    .line 41
    iput v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->maxSlowFrames:I

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 43
    iput-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentFPS:D

    .line 44
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->goodFrames:I

    .line 45
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->slowFrames:I

    const-wide/16 v2, 0x0

    .line 46
    iput-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->totalFrames:J

    .line 47
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->resetRequested:Z

    .line 66
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->nanoTimeFn:Lj$/util/function/LongSupplier;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 67
    array-length p1, p3

    array-length v2, p2

    sub-int/2addr v2, v1

    if-lt p1, v2, :cond_1

    .line 72
    iput-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->unfudgedTargetFrameRates:[D

    .line 73
    iput-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->minimumFrameRates:[D

    .line 75
    array-length p1, p2

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->targetFrameRates:[D

    const/4 p1, 0x0

    .line 76
    :goto_0
    array-length p3, p2

    if-ge p1, p3, :cond_0

    .line 77
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->targetFrameRates:[D

    iget-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->targetFrameRateFudgeFactor:D

    aget-wide v3, p2, p1

    mul-double v1, v1, v3

    aput-wide v1, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->setCurrentRateIndex(I)V

    return-void

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must specify as many minimum rates as target rates minus one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private reduceFPS()V
    .locals 1

    .line 101
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentRateIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->setCurrentRateIndex(I)V

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->goodFrames:I

    .line 103
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->slowFrames:I

    .line 104
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->frameRateLocked:Z

    return-void
.end method

.method private resetIfRequested()V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->resetRequested:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->clearTimestamps()V

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->setCurrentRateIndex(I)V

    .line 122
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->frameRateLocked:Z

    .line 123
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->resetRequested:Z

    :cond_0
    return-void
.end method

.method private setCurrentRateIndex(I)V
    .locals 5

    .line 95
    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentRateIndex:I

    .line 96
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->targetFrameRates:[D

    aget-wide v1, v0, p1

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v3, v1

    double-to-long v0, v3

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentNanosPerFrame:J

    return-void
.end method


# virtual methods
.method public allowLockingFrameRate()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->allowLockingFrameRate:Z

    return v0
.end method

.method public allowReducingFrameRate()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->allowReducingFrameRate:Z

    return v0
.end method

.method public clearTimestamps()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->goodFrames:I

    .line 90
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->slowFrames:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 91
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentFPS:D

    return-void
.end method

.method public currentFramesPerSecond()D
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentFPS:D

    return-wide v0
.end method

.method public fpsDebugInfo()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 186
    iget-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentFPS:D

    .line 187
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->targetFramesPerSecond()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->frameRateLocked:Z

    if-eqz v1, :cond_0

    const-string v1, "(locked)"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "FPS: %.1f target: %.1f %s"

    .line 186
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public frameStarted()V
    .locals 6

    .line 133
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->resetIfRequested()V

    .line 134
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->nanoTimeFn:Lj$/util/function/LongSupplier;

    invoke-interface {v0}, Lj$/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    .line 135
    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->totalFrames:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->totalFrames:J

    .line 136
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->frameHistorySize:I

    if-le v2, v3, :cond_2

    .line 138
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 139
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 140
    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->frameHistorySize:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentFPS:D

    .line 142
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->frameRateLocked:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentRateIndex:I

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->minimumFrameRates:[D

    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 143
    aget-wide v0, v1, v0

    const/4 v4, 0x1

    cmpg-double v5, v2, v0

    if-gez v5, :cond_0

    .line 145
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->slowFrames:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->slowFrames:I

    .line 146
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->maxSlowFrames:I

    if-lt v0, v1, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->reduceFPS()V

    goto :goto_0

    .line 151
    :cond_0
    iget v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->goodFrames:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->goodFrames:I

    .line 152
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->maxGoodFrames:I

    if-lez v1, :cond_2

    if-lt v0, v1, :cond_2

    .line 155
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->allowLockingFrameRate:Z

    if-eqz v0, :cond_1

    .line 156
    iput-boolean v4, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->frameRateLocked:Z

    :cond_1
    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->slowFrames:I

    .line 161
    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->goodFrames:I

    :cond_2
    :goto_0
    return-void
.end method

.method public getTotalFrames()J
    .locals 2

    .line 262
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->totalFrames:J

    return-wide v0
.end method

.method public nanosToWaitUntilNextFrame()J
    .locals 13

    .line 195
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->nanoTimeFn:Lj$/util/function/LongSupplier;

    invoke-interface {v0}, Lj$/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    .line 196
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const-wide/32 v3, 0x186a0

    if-eqz v2, :cond_0

    return-wide v3

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 200
    iget-wide v7, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentNanosPerFrame:J

    add-long/2addr v5, v7

    sub-long v0, v5, v0

    .line 203
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v7, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->frameHistorySize:I

    if-ne v2, v7, :cond_1

    .line 204
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->previousFrameTimestamps:Ljava/util/LinkedList;

    .line 205
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget v2, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->frameHistorySize:I

    int-to-long v9, v2

    iget-wide v11, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentNanosPerFrame:J

    mul-long v9, v9, v11

    add-long/2addr v7, v9

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_1

    sub-long/2addr v0, v5

    .line 213
    :cond_1
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetFrameRate()V
    .locals 1

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->resetRequested:Z

    return-void
.end method

.method public setAllowLockingFrameRate(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->allowLockingFrameRate:Z

    return-void
.end method

.method public setAllowReducingFrameRate(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->allowReducingFrameRate:Z

    return-void
.end method

.method public sleepUntilNextFrame()J
    .locals 6

    .line 223
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->nanosToWaitUntilNextFrame()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    .line 225
    :try_start_0
    div-long v4, v0, v2

    rem-long v2, v0, v2

    long-to-int v3, v2

    invoke-static {v4, v5, v3}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public targetFramesPerSecond()D
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->unfudgedTargetFrameRates:[D

    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentRateIndex:I

    aget-wide v1, v0, v1

    return-wide v1
.end method
