.class public Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;
.super Ljava/lang/Object;
.source "FieldDriver.java"


# static fields
.field private static BILLION:J = 0x0L

.field static INACTIVE_FRAME_MSECS:J = 0xfaL

.field private static MILLION:J = 0xf4240L


# instance fields
.field averageFPS:D

.field drawFn:Ljava/lang/Runnable;

.field field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

.field frameRateManager:Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;

.field gameThread:Ljava/lang/Thread;

.field running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/32 v0, 0xf4240

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 29
    sput-wide v0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->BILLION:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver$$ExternalSyntheticLambda1;->INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver$$ExternalSyntheticLambda1;

    const/4 v2, 0x5

    new-array v2, v2, [D

    fill-array-data v2, :array_0

    const/4 v3, 0x4

    new-array v3, v3, [D

    fill-array-data v3, :array_1

    invoke-direct {v0, v1, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;-><init>(Lj$/util/function/LongSupplier;[D[D)V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->frameRateManager:Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;

    return-void

    nop

    :array_0
    .array-data 8
        0x404e000000000000L    # 60.0
        0x4049000000000000L    # 50.0
        0x4046800000000000L    # 45.0
        0x4044000000000000L    # 40.0
        0x403e000000000000L    # 30.0
    .end array-data

    :array_1
    .array-data 8
        0x404c800000000000L    # 57.0
        0x4048000000000000L    # 48.0
        0x4045800000000000L    # 43.0
        0x4043000000000000L    # 38.0
    .end array-data
.end method


# virtual methods
.method public getAverageFPS()D
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->averageFPS:D

    return-wide v0
.end method

.method public resetFrameRate()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->frameRateManager:Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->resetFrameRate()V

    return-void
.end method

.method public setAverageFPS(D)V
    .locals 0

    .line 119
    iput-wide p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->averageFPS:D

    return-void
.end method

.method public setDrawFunction(Ljava/lang/Runnable;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->drawFn:Ljava/lang/Runnable;

    return-void
.end method

.method public setField(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->running:Z

    .line 42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver$$ExternalSyntheticLambda0;-><init>(Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->gameThread:Ljava/lang/Thread;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->running:Z

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->gameThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method threadMain()V
    .locals 6

    .line 62
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->running:Z

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->frameRateManager:Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->frameStarted()V

    const/4 v0, 0x1

    .line 65
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    if-eqz v1, :cond_2

    .line 67
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :try_start_1
    sget-wide v2, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->BILLION:J

    long-to-double v2, v2

    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->frameRateManager:Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;

    .line 69
    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->targetFramesPerSecond()D

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    double-to-long v2, v2

    long-to-float v2, v2

    .line 70
    :try_start_2
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getTargetTimeRatio()F

    move-result v3

    mul-float v2, v2, v3

    float-to-long v2, v2

    .line 72
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->hasActiveElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    sget-wide v2, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->INACTIVE_FRAME_MSECS:J

    sget-wide v4, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->MILLION:J

    mul-long v2, v2, v4

    long-to-float v2, v2

    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    .line 75
    invoke-virtual {v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getTargetTimeRatio()F

    move-result v3

    mul-float v2, v2, v3

    float-to-long v2, v2

    .line 77
    :cond_1
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    const/4 v5, 0x4

    invoke-virtual {v4, v2, v3, v5}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->tick(JI)V

    .line 78
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :try_start_3
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->drawFn:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 78
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->frameRateManager:Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->clearTimestamps()V

    const-wide/16 v0, 0x0

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->setAverageFPS(D)V

    .line 91
    :try_start_6
    sget-wide v0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->INACTIVE_FRAME_MSECS:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    nop

    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->frameRateManager:Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->sleepUntilNextFrame()J

    .line 101
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->frameRateManager:Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->getTotalFrames()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 102
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->frameRateManager:Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/util/FrameRateManager;->currentFramesPerSecond()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldDriver;->setAverageFPS(D)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
