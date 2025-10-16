.class public Ljwtc/android/chess/services/LocalClockApi;
.super Ljwtc/android/chess/services/ClockApi;
.source "LocalClockApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwtc/android/chess/services/LocalClockApi$RunnableImp;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "LocalClockApi"


# instance fields
.field private clockThread:Ljava/lang/Thread;

.field protected currentTurn:I

.field protected increment:J

.field protected lastMeasureTime:J

.field protected updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljwtc/android/chess/services/ClockApi;-><init>()V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Ljwtc/android/chess/services/LocalClockApi;->increment:J

    .line 12
    iput-wide v0, p0, Ljwtc/android/chess/services/LocalClockApi;->lastMeasureTime:J

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Ljwtc/android/chess/services/LocalClockApi;->currentTurn:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Ljwtc/android/chess/services/LocalClockApi;->clockThread:Ljava/lang/Thread;

    .line 17
    new-instance v0, Ljwtc/android/chess/services/LocalClockApi$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/services/LocalClockApi$1;-><init>(Ljwtc/android/chess/services/LocalClockApi;)V

    iput-object v0, p0, Ljwtc/android/chess/services/LocalClockApi;->updateHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getBlackRemaining()J
    .locals 7

    .line 56
    iget v0, p0, Ljwtc/android/chess/services/LocalClockApi;->currentTurn:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 58
    iget-wide v5, p0, Ljwtc/android/chess/services/LocalClockApi;->lastMeasureTime:J

    sub-long/2addr v3, v5

    .line 59
    iget-wide v5, p0, Ljwtc/android/chess/services/LocalClockApi;->blackRemaining:J

    sub-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-ltz v0, :cond_0

    move-wide v1, v5

    :cond_0
    return-wide v1

    .line 62
    :cond_1
    iget-wide v3, p0, Ljwtc/android/chess/services/LocalClockApi;->blackRemaining:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    iget-wide v1, p0, Ljwtc/android/chess/services/LocalClockApi;->blackRemaining:J

    :cond_2
    return-wide v1
.end method

.method public getLastMeasureTime()J
    .locals 2

    .line 77
    iget-wide v0, p0, Ljwtc/android/chess/services/LocalClockApi;->lastMeasureTime:J

    return-wide v0
.end method

.method public getWhiteRemaining()J
    .locals 7

    .line 67
    iget v0, p0, Ljwtc/android/chess/services/LocalClockApi;->currentTurn:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 69
    iget-wide v5, p0, Ljwtc/android/chess/services/LocalClockApi;->lastMeasureTime:J

    sub-long/2addr v3, v5

    .line 70
    iget-wide v5, p0, Ljwtc/android/chess/services/LocalClockApi;->whiteRemaining:J

    sub-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-ltz v0, :cond_0

    move-wide v1, v5

    :cond_0
    return-wide v1

    .line 73
    :cond_1
    iget-wide v3, p0, Ljwtc/android/chess/services/LocalClockApi;->whiteRemaining:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    iget-wide v1, p0, Ljwtc/android/chess/services/LocalClockApi;->whiteRemaining:J

    :cond_2
    return-wide v1
.end method

.method public startClock(JJJIJ)V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startClock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalClockApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iput-wide p1, p0, Ljwtc/android/chess/services/LocalClockApi;->increment:J

    .line 29
    iput-wide p3, p0, Ljwtc/android/chess/services/LocalClockApi;->whiteRemaining:J

    .line 30
    iput-wide p5, p0, Ljwtc/android/chess/services/LocalClockApi;->blackRemaining:J

    .line 31
    iput p7, p0, Ljwtc/android/chess/services/LocalClockApi;->currentTurn:I

    .line 33
    iput-wide p8, p0, Ljwtc/android/chess/services/LocalClockApi;->lastMeasureTime:J

    const-wide/16 p1, 0x0

    cmp-long p3, p8, p1

    if-lez p3, :cond_0

    .line 35
    iget-object p1, p0, Ljwtc/android/chess/services/LocalClockApi;->clockThread:Ljava/lang/Thread;

    if-nez p1, :cond_0

    .line 36
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Ljwtc/android/chess/services/LocalClockApi$RunnableImp;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Ljwtc/android/chess/services/LocalClockApi$RunnableImp;-><init>(Ljwtc/android/chess/services/LocalClockApi;Ljwtc/android/chess/services/LocalClockApi$1;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Ljwtc/android/chess/services/LocalClockApi;->clockThread:Ljava/lang/Thread;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public stopClock()V
    .locals 2

    .line 42
    iget-object v0, p0, Ljwtc/android/chess/services/LocalClockApi;->clockThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :try_start_1
    iget-object v0, p0, Ljwtc/android/chess/services/LocalClockApi;->clockThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 46
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    iget-object v0, p0, Ljwtc/android/chess/services/LocalClockApi;->clockThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 46
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v0, "LocalClockApi"

    const-string v1, "stopClock interrupted"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Ljwtc/android/chess/services/LocalClockApi;->clockThread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public switchTurn(I)V
    .locals 6

    .line 81
    iget v0, p0, Ljwtc/android/chess/services/LocalClockApi;->currentTurn:I

    if-eq p1, v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchTurn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalClockApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput p1, p0, Ljwtc/android/chess/services/LocalClockApi;->currentTurn:I

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    iget-wide v2, p0, Ljwtc/android/chess/services/LocalClockApi;->lastMeasureTime:J

    sub-long v2, v0, v2

    if-nez p1, :cond_0

    .line 88
    iget-wide v4, p0, Ljwtc/android/chess/services/LocalClockApi;->whiteRemaining:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Ljwtc/android/chess/services/LocalClockApi;->whiteRemaining:J

    .line 89
    iget-wide v2, p0, Ljwtc/android/chess/services/LocalClockApi;->whiteRemaining:J

    iget-wide v4, p0, Ljwtc/android/chess/services/LocalClockApi;->increment:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljwtc/android/chess/services/LocalClockApi;->whiteRemaining:J

    goto :goto_0

    .line 91
    :cond_0
    iget-wide v4, p0, Ljwtc/android/chess/services/LocalClockApi;->blackRemaining:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Ljwtc/android/chess/services/LocalClockApi;->blackRemaining:J

    .line 92
    iget-wide v2, p0, Ljwtc/android/chess/services/LocalClockApi;->blackRemaining:J

    iget-wide v4, p0, Ljwtc/android/chess/services/LocalClockApi;->increment:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljwtc/android/chess/services/LocalClockApi;->blackRemaining:J

    .line 95
    :goto_0
    iput-wide v0, p0, Ljwtc/android/chess/services/LocalClockApi;->lastMeasureTime:J

    :cond_1
    return-void
.end method
