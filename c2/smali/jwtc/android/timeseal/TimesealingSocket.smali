.class public Ljwtc/android/timeseal/TimesealingSocket;
.super Ljava/net/Socket;
.source "TimesealingSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwtc/android/timeseal/TimesealingSocket$a;
    }
.end annotation


# static fields
.field private static final jdField_int:Ljava/lang/String;


# instance fields
.field private volatile a:Ljava/lang/Thread;

.field private final jdField_do:Ljwtc/android/timeseal/streams/c;

.field private volatile jdField_for:J

.field private jdField_if:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TIMESTAMP|FICS timeseal implementation by Alexander Maryanovsky|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "java.vendor"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_int:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 20
    new-instance p1, Ljwtc/android/timeseal/streams/c;

    const/16 p2, 0x2710

    invoke-direct {p1, p2}, Ljwtc/android/timeseal/streams/c;-><init>(I)V

    iput-object p1, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_do:Ljwtc/android/timeseal/streams/c;

    .line 129
    invoke-direct {p0}, Ljwtc/android/timeseal/TimesealingSocket;->jdField_if()V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 20
    new-instance p1, Ljwtc/android/timeseal/streams/c;

    const/16 p2, 0x2710

    invoke-direct {p1, p2}, Ljwtc/android/timeseal/streams/c;-><init>(I)V

    iput-object p1, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_do:Ljwtc/android/timeseal/streams/c;

    .line 121
    invoke-direct {p0}, Ljwtc/android/timeseal/TimesealingSocket;->jdField_if()V

    const-string p1, "TimesealingSocket"

    const-string p2, "initialized"

    .line 123
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Ljwtc/android/timeseal/TimesealingSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Ljwtc/android/timeseal/TimesealingSocket;->jdField_int:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0xa

    .line 38
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Ljwtc/android/timeseal/TimesealingSocket;)J
    .locals 2

    .line 16
    iget-wide v0, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_for:J

    return-wide v0
.end method

.method private final jdField_if()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_for:J

    .line 27
    new-instance v0, Ljwtc/android/timeseal/TimesealingSocket$a;

    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljwtc/android/timeseal/TimesealingSocket$a;-><init>(Ljwtc/android/timeseal/TimesealingSocket;Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_if:Ljava/io/OutputStream;

    .line 28
    invoke-direct {p0}, Ljwtc/android/timeseal/TimesealingSocket;->a()V

    .line 29
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Timeseal thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljwtc/android/timeseal/TimesealingSocket;->a:Ljava/lang/Thread;

    .line 30
    iget-object v0, p0, Ljwtc/android/timeseal/TimesealingSocket;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-super {p0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Ljwtc/android/timeseal/TimesealingSocket;->a:Ljava/lang/Thread;

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 109
    iget-object v0, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_do:Ljwtc/android/timeseal/streams/c;

    invoke-virtual {v0}, Ljwtc/android/timeseal/streams/c;->jdField_if()Ljwtc/android/timeseal/streams/a;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_if:Ljava/io/OutputStream;

    return-object v0
.end method

.method public run()V
    .locals 12

    .line 44
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 46
    iget-object v1, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_do:Ljwtc/android/timeseal/streams/c;

    invoke-virtual {v1}, Ljwtc/android/timeseal/streams/c;->jdField_byte()Ljwtc/android/timeseal/streams/b;

    move-result-object v1

    const-string v2, "\n\r[G]\n\r"

    const/4 v3, 0x7

    new-array v4, v3, [B

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    .line 51
    :cond_0
    :goto_2
    iget-object v8, p0, Ljwtc/android/timeseal/TimesealingSocket;->a:Ljava/lang/Thread;

    if-eqz v8, :cond_8

    if-eqz v6, :cond_3

    aget-byte v8, v4, v5

    if-gez v8, :cond_1

    add-int/lit16 v8, v8, 0x100

    :cond_1
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_2

    add-int/lit8 v10, v9, 0x1

    .line 58
    aget-byte v11, v4, v10

    aput-byte v11, v4, v9

    move v9, v10

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 61
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v8

    .line 63
    :goto_4
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v3, :cond_0

    .line 68
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-virtual {p0}, Ljwtc/android/timeseal/TimesealingSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const-string v7, "\u00029\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 70
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_4
    if-eqz v7, :cond_6

    .line 73
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v1, v9}, Ljwtc/android/timeseal/streams/b;->write(I)V

    const/4 v9, 0x0

    :goto_5
    add-int/lit8 v10, v7, -0x1

    if-ge v9, v10, :cond_5

    add-int/lit8 v10, v9, 0x1

    .line 75
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v4, v9

    add-int/lit8 v6, v6, 0x1

    move v9, v10

    goto :goto_5

    :cond_5
    add-int/lit8 v7, v6, 0x1

    int-to-byte v8, v8

    .line 78
    aput-byte v8, v4, v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v6, v7

    goto :goto_1

    :cond_6
    if-gez v8, :cond_7

    .line 96
    :try_start_3
    iget-object v0, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_do:Ljwtc/android/timeseal/streams/c;

    invoke-virtual {v0}, Ljwtc/android/timeseal/streams/c;->jdField_byte()Ljwtc/android/timeseal/streams/b;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljwtc/android/timeseal/streams/b;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-void

    .line 83
    :cond_7
    :try_start_4
    invoke-virtual {v1, v8}, Ljwtc/android/timeseal/streams/b;->write(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 96
    :cond_8
    :try_start_5
    iget-object v0, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_do:Ljwtc/android/timeseal/streams/c;

    :goto_6
    invoke-virtual {v0}, Ljwtc/android/timeseal/streams/c;->jdField_byte()Ljwtc/android/timeseal/streams/b;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljwtc/android/timeseal/streams/b;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    .line 88
    :catch_1
    :try_start_6
    iget-object v0, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_if:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catch_2
    move-exception v0

    .line 90
    :try_start_7
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Failed to close PipedStream"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 96
    :goto_7
    :try_start_8
    iget-object v0, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_do:Ljwtc/android/timeseal/streams/c;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    :goto_8
    return-void

    :goto_9
    :try_start_9
    iget-object v1, p0, Ljwtc/android/timeseal/TimesealingSocket;->jdField_do:Ljwtc/android/timeseal/streams/c;

    invoke-virtual {v1}, Ljwtc/android/timeseal/streams/c;->jdField_byte()Ljwtc/android/timeseal/streams/b;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljwtc/android/timeseal/streams/b;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 100
    :catch_4
    throw v0
.end method
