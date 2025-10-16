.class public Ljwtc/android/chess/ics/TimesealPipe;
.super Ljava/lang/Object;
.source "TimesealPipe.java"


# instance fields
.field private _fldbyte:I

.field private _fldchar:I

.field private volatile _flddo:I

.field private final buffer:[B

.field private closedFlag:Z

.field private closedFlag2:Z

.field private readLock:Ljava/lang/Object;

.field private final timesealInputStream:Ljwtc/android/chess/ics/TimesealInputStream;

.field private final timesealOutputStream:Ljwtc/android/chess/ics/TimesealOutputStream;

.field private writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    .line 33
    invoke-direct {p0, v0}, Ljwtc/android/chess/ics/TimesealPipe;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->_flddo:I

    .line 38
    iput v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldchar:I

    .line 39
    iput v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldbyte:I

    .line 40
    iput-boolean v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag:Z

    .line 41
    iput-boolean v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag2:Z

    const-string v0, "Write Lock for PipedStreams"

    .line 42
    iput-object v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->writeLock:Ljava/lang/Object;

    const-string v0, "Read Lock for PipedStream"

    .line 43
    iput-object v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->readLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljwtc/android/chess/ics/TimesealInputStream;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/TimesealInputStream;-><init>(Ljwtc/android/chess/ics/TimesealPipe;)V

    iput-object v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->timesealInputStream:Ljwtc/android/chess/ics/TimesealInputStream;

    .line 45
    new-instance v0, Ljwtc/android/chess/ics/TimesealOutputStream;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/TimesealOutputStream;-><init>(Ljwtc/android/chess/ics/TimesealPipe;)V

    iput-object v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->timesealOutputStream:Ljwtc/android/chess/ics/TimesealOutputStream;

    .line 46
    new-array p1, p1, [B

    iput-object p1, p0, Ljwtc/android/chess/ics/TimesealPipe;->buffer:[B

    return-void
.end method

.method private _mthint()I
    .locals 3

    .line 227
    iget v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldbyte:I

    iget v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldchar:I

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 230
    :cond_0
    iget-object v2, p0, Ljwtc/android/chess/ics/TimesealPipe;->buffer:[B

    array-length v2, v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private duno()I
    .locals 2

    .line 235
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->buffer:[B

    array-length v0, v0

    invoke-direct {p0}, Ljwtc/android/chess/ics/TimesealPipe;->_mthint()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method declared-synchronized _mthcase()I
    .locals 1

    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag2:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 69
    monitor-exit p0

    return v0

    .line 71
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljwtc/android/chess/ics/TimesealPipe;->_mthint()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public _mthdo()I
    .locals 1

    .line 50
    iget v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->_flddo:I

    return v0
.end method

.method declared-synchronized _mthfor()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->readLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    :try_start_1
    iget-boolean v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag2:Z

    if-nez v1, :cond_8

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 81
    :goto_0
    invoke-virtual {p0}, Ljwtc/android/chess/ics/TimesealPipe;->_mthcase()I

    move-result v3

    if-nez v3, :cond_5

    .line 82
    iget-boolean v3, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag:Z

    if-eqz v3, :cond_0

    const/4 v1, -0x1

    .line 84
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 86
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 87
    iget v5, p0, Ljwtc/android/chess/ics/TimesealPipe;->_flddo:I

    if-eqz v5, :cond_2

    sub-long v5, v3, v1

    iget v7, p0, Ljwtc/android/chess/ics/TimesealPipe;->_flddo:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :cond_2
    :goto_1
    :try_start_3
    iget v5, p0, Ljwtc/android/chess/ics/TimesealPipe;->_flddo:I

    if-nez v5, :cond_3

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 94
    :cond_3
    iget v5, p0, Ljwtc/android/chess/ics/TimesealPipe;->_flddo:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    sub-long/2addr v5, v1

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :goto_2
    :try_start_4
    iget-boolean v3, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag2:Z

    if-nez v3, :cond_4

    goto :goto_0

    .line 100
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :catch_0
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 103
    :cond_5
    iget-object v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->buffer:[B

    iget v2, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldchar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldchar:I

    aget-byte v2, v1, v2

    .line 104
    array-length v1, v1

    if-ne v3, v1, :cond_6

    const/4 v1, 0x0

    .line 105
    iput v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldchar:I

    .line 107
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    if-ltz v2, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit16 v2, v2, 0x100

    .line 109
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v2

    .line 78
    :cond_8
    :try_start_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 110
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized _mthif([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->readLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    :try_start_1
    iget-boolean v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag2:Z

    if-nez v1, :cond_9

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 119
    :goto_0
    invoke-virtual {p0}, Ljwtc/android/chess/ics/TimesealPipe;->_mthcase()I

    move-result v3

    if-nez v3, :cond_5

    .line 120
    iget-boolean v3, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag:Z

    if-eqz v3, :cond_0

    const/4 p1, -0x1

    .line 122
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 124
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 125
    iget v5, p0, Ljwtc/android/chess/ics/TimesealPipe;->_flddo:I

    if-eqz v5, :cond_2

    sub-long v5, v3, v1

    iget v7, p0, Ljwtc/android/chess/ics/TimesealPipe;->_flddo:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :cond_2
    :goto_1
    :try_start_3
    iget v5, p0, Ljwtc/android/chess/ics/TimesealPipe;->_flddo:I

    if-nez v5, :cond_3

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 132
    :cond_3
    iget v5, p0, Ljwtc/android/chess/ics/TimesealPipe;->_flddo:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    sub-long/2addr v5, v1

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    :goto_2
    :try_start_4
    iget-boolean v3, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag2:Z

    if-nez v3, :cond_4

    goto :goto_0

    .line 138
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :catch_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 141
    :cond_5
    invoke-virtual {p0}, Ljwtc/android/chess/ics/TimesealPipe;->_mthcase()I

    move-result v1

    if-gt p3, v1, :cond_6

    goto :goto_3

    :cond_6
    move p3, v1

    .line 143
    :goto_3
    iget-object v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->buffer:[B

    array-length v2, v1

    iget v3, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldchar:I

    sub-int/2addr v2, v3

    if-gt v2, p3, :cond_7

    array-length v2, v1

    sub-int/2addr v2, v3

    goto :goto_4

    :cond_7
    move v2, p3

    :goto_4
    sub-int v4, p3, v2

    const/4 v5, 0x0

    if-gtz v4, :cond_8

    const/4 v4, 0x0

    .line 146
    :cond_8
    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->buffer:[B

    add-int/2addr p2, v2

    invoke-static {v1, v5, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget p1, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldchar:I

    add-int/2addr p1, p3

    iget-object p2, p0, Ljwtc/android/chess/ics/TimesealPipe;->buffer:[B

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldchar:I

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return p3

    .line 116
    :cond_9
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 152
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public _mthif(I)V
    .locals 1

    .line 54
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    iput p1, p0, Ljwtc/android/chess/ics/TimesealPipe;->_flddo:I

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method declared-synchronized _mthnew()V
    .locals 2

    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag2:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag2:Z

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 157
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized _mthtry()V
    .locals 2

    monitor-enter p0

    .line 166
    :try_start_0
    iget-boolean v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag:Z

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->writeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    :try_start_1
    iget-boolean v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag2:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag:Z

    if-nez v1, :cond_3

    .line 180
    :goto_0
    invoke-direct {p0}, Ljwtc/android/chess/ics/TimesealPipe;->duno()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 182
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 184
    :catch_0
    :try_start_3
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 187
    :cond_0
    iget-boolean v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag2:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag:Z

    if-nez v1, :cond_2

    .line 190
    iget-object v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->buffer:[B

    iget v2, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldbyte:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldbyte:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 191
    array-length p1, v1

    if-ne v3, p1, :cond_1

    const/4 p1, 0x0

    .line 192
    iput p1, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldbyte:I

    .line 194
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 195
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 188
    :cond_2
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 195
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTimesealInputStream()Ljwtc/android/chess/ics/TimesealInputStream;
    .locals 1

    .line 60
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->timesealInputStream:Ljwtc/android/chess/ics/TimesealInputStream;

    return-object v0
.end method

.method public getTimesealOutputStream()Ljwtc/android/chess/ics/TimesealOutputStream;
    .locals 1

    .line 64
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->timesealOutputStream:Ljwtc/android/chess/ics/TimesealOutputStream;

    return-object v0
.end method

.method declared-synchronized write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealPipe;->writeLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    :try_start_1
    iget-boolean v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag2:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->closedFlag:Z

    if-nez v1, :cond_5

    :goto_0
    if-lez p3, :cond_4

    .line 204
    :goto_1
    invoke-direct {p0}, Ljwtc/android/chess/ics/TimesealPipe;->duno()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 206
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 208
    :catch_0
    :try_start_3
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 211
    :cond_0
    invoke-direct {p0}, Ljwtc/android/chess/ics/TimesealPipe;->duno()I

    move-result v1

    if-gt p3, v1, :cond_1

    move v1, p3

    .line 213
    :cond_1
    iget-object v2, p0, Ljwtc/android/chess/ics/TimesealPipe;->buffer:[B

    array-length v3, v2

    iget v4, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldbyte:I

    sub-int/2addr v3, v4

    if-ge v3, v1, :cond_2

    .line 214
    array-length v3, v2

    sub-int/2addr v3, v4

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    sub-int v5, v1, v3

    const/4 v6, 0x0

    if-gtz v5, :cond_3

    const/4 v5, 0x0

    .line 216
    :cond_3
    invoke-static {p1, p2, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, p2

    .line 217
    iget-object v2, p0, Ljwtc/android/chess/ics/TimesealPipe;->buffer:[B

    invoke-static {p1, v3, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 220
    iget v2, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldbyte:I

    add-int/2addr v2, v1

    iget-object v1, p0, Ljwtc/android/chess/ics/TimesealPipe;->buffer:[B

    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Ljwtc/android/chess/ics/TimesealPipe;->_fldbyte:I

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 223
    :cond_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 201
    :cond_5
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 223
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
