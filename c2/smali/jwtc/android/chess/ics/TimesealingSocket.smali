.class public Ljwtc/android/chess/ics/TimesealingSocket;
.super Ljava/net/Socket;
.source "TimesealingSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;
    }
.end annotation


# instance fields
.field protected cryptedOutputStream:Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;

.field private volatile initialTime:J

.field private initialTimesealString:Ljava/lang/String;

.field private volatile thread:Ljava/lang/Thread;

.field private final timesealPipe:Ljwtc/android/chess/ics/TimesealPipe;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Ljwtc/android/chess/ics/TimesealingSocket;->initialTimesealString:Ljava/lang/String;

    .line 105
    new-instance p1, Ljwtc/android/chess/ics/TimesealPipe;

    const/16 p2, 0x2710

    invoke-direct {p1, p2}, Ljwtc/android/chess/ics/TimesealPipe;-><init>(I)V

    iput-object p1, p0, Ljwtc/android/chess/ics/TimesealingSocket;->timesealPipe:Ljwtc/android/chess/ics/TimesealPipe;

    .line 106
    iput-object p3, p0, Ljwtc/android/chess/ics/TimesealingSocket;->initialTimesealString:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljwtc/android/chess/ics/TimesealingSocket;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 97
    iput-object p3, p0, Ljwtc/android/chess/ics/TimesealingSocket;->initialTimesealString:Ljava/lang/String;

    .line 98
    new-instance p1, Ljwtc/android/chess/ics/TimesealPipe;

    const/16 p2, 0x2710

    invoke-direct {p1, p2}, Ljwtc/android/chess/ics/TimesealPipe;-><init>(I)V

    iput-object p1, p0, Ljwtc/android/chess/ics/TimesealingSocket;->timesealPipe:Ljwtc/android/chess/ics/TimesealPipe;

    .line 99
    invoke-direct {p0}, Ljwtc/android/chess/ics/TimesealingSocket;->init()V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/ics/TimesealingSocket;)J
    .locals 2

    .line 6
    iget-wide v0, p0, Ljwtc/android/chess/ics/TimesealingSocket;->initialTime:J

    return-wide v0
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljwtc/android/chess/ics/TimesealingSocket;->initialTime:J

    .line 198
    new-instance v0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;

    invoke-super {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;-><init>(Ljwtc/android/chess/ics/TimesealingSocket;Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket;->cryptedOutputStream:Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;

    .line 199
    invoke-direct {p0}, Ljwtc/android/chess/ics/TimesealingSocket;->writeInitialTimesealString()V

    .line 200
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Timeseal thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket;->thread:Ljava/lang/Thread;

    .line 201
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private writeInitialTimesealString()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x64

    .line 208
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :catch_0
    invoke-virtual {p0}, Ljwtc/android/chess/ics/TimesealingSocket;->getOutputStream()Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;

    move-result-object v0

    .line 213
    monitor-enter v0

    .line 214
    :try_start_1
    iget-object v1, p0, Ljwtc/android/chess/ics/TimesealingSocket;->initialTimesealString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0xa

    .line 215
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 216
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-super {p0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 118
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket;->timesealPipe:Ljwtc/android/chess/ics/TimesealPipe;

    invoke-virtual {v0}, Ljwtc/android/chess/ics/TimesealPipe;->getTimesealInputStream()Ljwtc/android/chess/ics/TimesealInputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Ljwtc/android/chess/ics/TimesealingSocket;->getOutputStream()Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket;->cryptedOutputStream:Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;

    return-object v0
.end method

.method public run()V
    .locals 12

    .line 128
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 129
    invoke-super {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 130
    iget-object v1, p0, Ljwtc/android/chess/ics/TimesealingSocket;->timesealPipe:Ljwtc/android/chess/ics/TimesealPipe;

    invoke-virtual {v1}, Ljwtc/android/chess/ics/TimesealPipe;->getTimesealOutputStream()Ljwtc/android/chess/ics/TimesealOutputStream;

    move-result-object v1

    const-string v2, "[G]\u0000"

    const/4 v3, 0x4

    new-array v4, v3, [B

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    .line 138
    :cond_0
    :goto_2
    iget-object v8, p0, Ljwtc/android/chess/ics/TimesealingSocket;->thread:Ljava/lang/Thread;

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

    .line 146
    aget-byte v11, v4, v10

    aput-byte v11, v4, v9

    move v9, v10

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 151
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v8

    .line 153
    :goto_4
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v3, :cond_0

    .line 157
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    :try_start_1
    invoke-virtual {p0}, Ljwtc/android/chess/ics/TimesealingSocket;->getOutputStream()Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;

    move-result-object v6

    const-string v7, "\u00029\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->write([B)V

    .line 159
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

    .line 163
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v1, v9}, Ljwtc/android/chess/ics/TimesealOutputStream;->write(I)V

    const/4 v9, 0x0

    :goto_5
    add-int/lit8 v10, v7, -0x1

    if-ge v9, v10, :cond_5

    add-int/lit8 v10, v9, 0x1

    .line 166
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

    .line 170
    aput-byte v8, v4, v6

    move v6, v7

    goto :goto_1

    :cond_6
    if-gez v8, :cond_7

    .line 174
    invoke-virtual {v1}, Ljwtc/android/chess/ics/TimesealOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    :try_start_3
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket;->timesealPipe:Ljwtc/android/chess/ics/TimesealPipe;

    invoke-virtual {v0}, Ljwtc/android/chess/ics/TimesealPipe;->getTimesealOutputStream()Ljwtc/android/chess/ics/TimesealOutputStream;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljwtc/android/chess/ics/TimesealOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-void

    .line 177
    :cond_7
    :try_start_4
    invoke-virtual {v1, v8}, Ljwtc/android/chess/ics/TimesealOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 189
    :cond_8
    :try_start_5
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket;->timesealPipe:Ljwtc/android/chess/ics/TimesealPipe;

    :goto_6
    invoke-virtual {v0}, Ljwtc/android/chess/ics/TimesealPipe;->getTimesealOutputStream()Ljwtc/android/chess/ics/TimesealOutputStream;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljwtc/android/chess/ics/TimesealOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    .line 182
    :catch_1
    :try_start_6
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket;->cryptedOutputStream:Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;

    invoke-virtual {v0}, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catch_2
    move-exception v0

    .line 185
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 189
    :goto_7
    :try_start_8
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket;->timesealPipe:Ljwtc/android/chess/ics/TimesealPipe;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    :goto_8
    return-void

    :goto_9
    :try_start_9
    iget-object v1, p0, Ljwtc/android/chess/ics/TimesealingSocket;->timesealPipe:Ljwtc/android/chess/ics/TimesealPipe;

    invoke-virtual {v1}, Ljwtc/android/chess/ics/TimesealPipe;->getTimesealOutputStream()Ljwtc/android/chess/ics/TimesealOutputStream;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Ljwtc/android/chess/ics/TimesealOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 193
    :catch_4
    throw v0
.end method
