.class public Ljwtc/android/timeseal/streams/c;
.super Ljava/lang/Object;
.source "c.java"


# static fields
.field private static final jdField_new:I = 0x800


# instance fields
.field private a:Ljava/lang/Object;

.field private final jdField_byte:Z

.field private jdField_case:Ljava/lang/Object;

.field private jdField_char:I

.field private volatile jdField_do:I

.field private final jdField_else:Ljwtc/android/timeseal/streams/a;

.field private jdField_for:[B

.field private jdField_goto:I

.field private jdField_if:Z

.field private jdField_int:Z

.field private final jdField_try:Ljwtc/android/timeseal/streams/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x800

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0, v0, v1}, Ljwtc/android/timeseal/streams/c;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, v0}, Ljwtc/android/timeseal/streams/c;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_do:I

    .line 13
    iput v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_goto:I

    .line 14
    iput v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_char:I

    .line 15
    iput-boolean v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_int:Z

    .line 16
    iput-boolean v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_if:Z

    .line 17
    new-instance v0, Ljava/lang/String;

    const-string v1, "Write Lock for PipedStreams"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljwtc/android/timeseal/streams/c;->a:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/String;

    const-string v1, "Read Lock for PipedStream"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_case:Ljava/lang/Object;

    if-lez p1, :cond_0

    .line 207
    new-instance v0, Ljwtc/android/timeseal/streams/a;

    invoke-direct {v0, p0}, Ljwtc/android/timeseal/streams/a;-><init>(Ljwtc/android/timeseal/streams/c;)V

    iput-object v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_else:Ljwtc/android/timeseal/streams/a;

    .line 208
    new-instance v0, Ljwtc/android/timeseal/streams/b;

    invoke-direct {v0, p0}, Ljwtc/android/timeseal/streams/b;-><init>(Ljwtc/android/timeseal/streams/c;)V

    iput-object v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_try:Ljwtc/android/timeseal/streams/b;

    .line 209
    iput-boolean p2, p0, Ljwtc/android/timeseal/streams/c;->jdField_byte:Z

    .line 210
    new-array p1, p1, [B

    iput-object p1, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    return-void

    .line 206
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The buffer size must be a positive integer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/16 v0, 0x800

    .line 201
    invoke-direct {p0, v0, p1}, Ljwtc/android/timeseal/streams/c;-><init>(IZ)V

    return-void
.end method

.method private final a()I
    .locals 2

    .line 51
    iget-object v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    array-length v0, v0

    invoke-direct {p0}, Ljwtc/android/timeseal/streams/c;->jdField_int()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private final jdField_do(I)V
    .locals 3

    .line 55
    iget-object v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    array-length p1, v0

    .line 56
    :cond_0
    array-length v1, v0

    add-int/2addr v1, p1

    new-array p1, v1, [B

    .line 57
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iput-object p1, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    return-void
.end method

.method private final jdField_int()I
    .locals 3

    .line 45
    iget v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_char:I

    iget v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_goto:I

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 47
    :cond_0
    iget-object v2, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    array-length v2, v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method declared-synchronized a(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Ljwtc/android/timeseal/streams/c;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    iget-boolean v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_if:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_int:Z

    if-nez v1, :cond_4

    .line 66
    :goto_0
    invoke-direct {p0}, Ljwtc/android/timeseal/streams/c;->a()I

    move-result v1

    if-nez v1, :cond_1

    .line 67
    iget-boolean v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_byte:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 68
    invoke-direct {p0, v1}, Ljwtc/android/timeseal/streams/c;->jdField_do(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 73
    :catch_0
    :try_start_3
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 75
    :cond_1
    iget-boolean v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_if:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_int:Z

    if-nez v1, :cond_3

    .line 77
    iget-object v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    iget v2, p0, Ljwtc/android/timeseal/streams/c;->jdField_char:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljwtc/android/timeseal/streams/c;->jdField_char:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 78
    array-length p1, v1

    if-ne v3, p1, :cond_2

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Ljwtc/android/timeseal/streams/c;->jdField_char:I

    .line 80
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 81
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 76
    :cond_3
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 81
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

.method declared-synchronized a([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Ljwtc/android/timeseal/streams/c;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    iget-boolean v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_if:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_int:Z

    if-nez v1, :cond_6

    .line 89
    iget-boolean v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_byte:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ljwtc/android/timeseal/streams/c;->a()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 90
    invoke-direct {p0}, Ljwtc/android/timeseal/streams/c;->a()I

    move-result v1

    sub-int v1, p3, v1

    invoke-direct {p0, v1}, Ljwtc/android/timeseal/streams/c;->jdField_do(I)V

    :cond_0
    :goto_0
    if-lez p3, :cond_5

    .line 92
    :goto_1
    invoke-direct {p0}, Ljwtc/android/timeseal/streams/c;->a()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 94
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 96
    :catch_0
    :try_start_3
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 98
    :cond_1
    invoke-direct {p0}, Ljwtc/android/timeseal/streams/c;->a()I

    move-result v1

    if-le p3, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, p3

    .line 100
    :goto_2
    iget-object v2, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    array-length v3, v2

    iget v4, p0, Ljwtc/android/timeseal/streams/c;->jdField_char:I

    sub-int/2addr v3, v4

    if-lt v3, v1, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    array-length v3, v2

    sub-int/2addr v3, v4

    :goto_3
    sub-int v5, v1, v3

    const/4 v6, 0x0

    if-lez v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 102
    :goto_4
    invoke-static {p1, p2, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, p2

    .line 103
    iget-object v2, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    invoke-static {p1, v3, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 106
    iget v2, p0, Ljwtc/android/timeseal/streams/c;->jdField_char:I

    add-int/2addr v2, v1

    iget-object v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Ljwtc/android/timeseal/streams/c;->jdField_char:I

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 109
    :cond_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 88
    :cond_6
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 109
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

.method public jdField_byte()Ljwtc/android/timeseal/streams/b;
    .locals 1

    .line 35
    iget-object v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_try:Ljwtc/android/timeseal/streams/b;

    return-object v0
.end method

.method declared-synchronized jdField_case()I
    .locals 1

    monitor-enter p0

    .line 39
    :try_start_0
    iget-boolean v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_if:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 40
    monitor-exit p0

    return v0

    .line 41
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljwtc/android/timeseal/streams/c;->jdField_int()I

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

.method public jdField_do()I
    .locals 1

    .line 27
    iget v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_do:I

    return v0
.end method

.method declared-synchronized jdField_for()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_case:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    :try_start_1
    iget-boolean v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_if:Z

    if-nez v1, :cond_8

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 118
    :goto_0
    invoke-virtual {p0}, Ljwtc/android/timeseal/streams/c;->jdField_case()I

    move-result v3

    if-nez v3, :cond_5

    .line 119
    iget-boolean v3, p0, Ljwtc/android/timeseal/streams/c;->jdField_int:Z

    if-eqz v3, :cond_0

    const/4 v1, -0x1

    .line 120
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 121
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 122
    iget v5, p0, Ljwtc/android/timeseal/streams/c;->jdField_do:I

    if-eqz v5, :cond_2

    sub-long v5, v3, v1

    iget v7, p0, Ljwtc/android/timeseal/streams/c;->jdField_do:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :cond_2
    :goto_1
    :try_start_3
    iget v5, p0, Ljwtc/android/timeseal/streams/c;->jdField_do:I

    if-nez v5, :cond_3

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 128
    :cond_3
    iget v5, p0, Ljwtc/android/timeseal/streams/c;->jdField_do:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    sub-long/2addr v5, v1

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    :goto_2
    :try_start_4
    iget-boolean v3, p0, Ljwtc/android/timeseal/streams/c;->jdField_if:Z

    if-nez v3, :cond_4

    goto :goto_0

    .line 133
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :catch_0
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 135
    :cond_5
    iget-object v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    iget v2, p0, Ljwtc/android/timeseal/streams/c;->jdField_goto:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljwtc/android/timeseal/streams/c;->jdField_goto:I

    aget-byte v2, v1, v2

    .line 136
    array-length v1, v1

    if-ne v3, v1, :cond_6

    const/4 v1, 0x0

    .line 137
    iput v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_goto:I

    .line 138
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    if-gez v2, :cond_7

    add-int/lit16 v2, v2, 0x100

    .line 139
    :cond_7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v2

    .line 116
    :cond_8
    :try_start_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 140
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

.method declared-synchronized jdField_if([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_case:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :try_start_1
    iget-boolean v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_if:Z

    if-nez v1, :cond_9

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 149
    :goto_0
    invoke-virtual {p0}, Ljwtc/android/timeseal/streams/c;->jdField_case()I

    move-result v3

    if-nez v3, :cond_5

    .line 150
    iget-boolean v3, p0, Ljwtc/android/timeseal/streams/c;->jdField_int:Z

    if-eqz v3, :cond_0

    const/4 p1, -0x1

    .line 151
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 152
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 153
    iget v5, p0, Ljwtc/android/timeseal/streams/c;->jdField_do:I

    if-eqz v5, :cond_2

    sub-long v5, v3, v1

    iget v7, p0, Ljwtc/android/timeseal/streams/c;->jdField_do:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :cond_2
    :goto_1
    :try_start_3
    iget v5, p0, Ljwtc/android/timeseal/streams/c;->jdField_do:I

    if-nez v5, :cond_3

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 159
    :cond_3
    iget v5, p0, Ljwtc/android/timeseal/streams/c;->jdField_do:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    sub-long/2addr v5, v1

    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :goto_2
    :try_start_4
    iget-boolean v3, p0, Ljwtc/android/timeseal/streams/c;->jdField_if:Z

    if-nez v3, :cond_4

    goto :goto_0

    .line 164
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :catch_0
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 166
    :cond_5
    invoke-virtual {p0}, Ljwtc/android/timeseal/streams/c;->jdField_case()I

    move-result v1

    if-le p3, v1, :cond_6

    move p3, v1

    .line 168
    :cond_6
    iget-object v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    array-length v2, v1

    iget v3, p0, Ljwtc/android/timeseal/streams/c;->jdField_goto:I

    sub-int/2addr v2, v3

    if-le v2, p3, :cond_7

    move v2, p3

    goto :goto_3

    :cond_7
    array-length v2, v1

    sub-int/2addr v2, v3

    :goto_3
    sub-int v4, p3, v2

    const/4 v5, 0x0

    if-lez v4, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    .line 170
    :goto_4
    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v1, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    add-int/2addr p2, v2

    invoke-static {v1, v5, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iget p1, p0, Ljwtc/android/timeseal/streams/c;->jdField_goto:I

    add-int/2addr p1, p3

    iget-object p2, p0, Ljwtc/android/timeseal/streams/c;->jdField_for:[B

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Ljwtc/android/timeseal/streams/c;->jdField_goto:I

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 174
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return p3

    .line 147
    :cond_9
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 175
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

.method public jdField_if()Ljwtc/android/timeseal/streams/a;
    .locals 1

    .line 31
    iget-object v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_else:Ljwtc/android/timeseal/streams/a;

    return-object v0
.end method

.method public jdField_if(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_case:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iput p1, p0, Ljwtc/android/timeseal/streams/c;->jdField_do:I

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method declared-synchronized jdField_new()V
    .locals 2

    monitor-enter p0

    .line 186
    :try_start_0
    iget-boolean v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_if:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_if:Z

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 187
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

.method declared-synchronized jdField_try()V
    .locals 2

    monitor-enter p0

    .line 179
    :try_start_0
    iget-boolean v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_int:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Ljwtc/android/timeseal/streams/c;->jdField_int:Z

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 180
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
