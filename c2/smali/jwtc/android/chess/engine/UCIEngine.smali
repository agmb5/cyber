.class public Ljwtc/android/chess/engine/UCIEngine;
.super Ljwtc/android/chess/engine/EngineApi;
.source "UCIEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UCIEngine"


# instance fields
.field private final _pattMove:Ljava/util/regex/Pattern;

.field private _process:Ljava/lang/Process;

.field private _reader:Ljava/io/BufferedReader;

.field private _readerError:Ljava/io/BufferedReader;

.field private _writer:Ljava/io/PrintWriter;

.field private databaseName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljwtc/android/chess/engine/EngineApi;-><init>()V

    const-string v0, "([a-h]{1}[1-8]{1})([a-h]{1}[1-8]{1})(q|r|b|n)?"

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ljwtc/android/chess/engine/UCIEngine;->_pattMove:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/engine/UCIEngine;)Ljava/io/BufferedReader;
    .locals 0

    .line 22
    iget-object p0, p0, Ljwtc/android/chess/engine/UCIEngine;->_reader:Ljava/io/BufferedReader;

    return-object p0
.end method

.method static synthetic access$100(Ljwtc/android/chess/engine/UCIEngine;)Ljava/util/regex/Pattern;
    .locals 0

    .line 22
    iget-object p0, p0, Ljwtc/android/chess/engine/UCIEngine;->_pattMove:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$200(Ljwtc/android/chess/engine/UCIEngine;)Ljava/lang/Process;
    .locals 0

    .line 22
    iget-object p0, p0, Ljwtc/android/chess/engine/UCIEngine;->_process:Ljava/lang/Process;

    return-object p0
.end method

.method static synthetic access$202(Ljwtc/android/chess/engine/UCIEngine;Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0

    .line 22
    iput-object p1, p0, Ljwtc/android/chess/engine/UCIEngine;->_process:Ljava/lang/Process;

    return-object p1
.end method

.method public static install(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljwtc/android/chess/engine/UCIEngine$2;

    invoke-direct {v1, p1, p0}, Ljwtc/android/chess/engine/UCIEngine$2;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static installDb(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljwtc/android/chess/engine/UCIEngine$3;

    invoke-direct {v1, p1, p0}, Ljwtc/android/chess/engine/UCIEngine$3;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static runConsole(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "UCIEngine"

    const-string v1, "runConsole"

    .line 269
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p0}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 273
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    const/4 p0, 0x1

    .line 274
    invoke-virtual {v1, p0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 275
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0

    const-string p1, ""

    .line 278
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 280
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 283
    :cond_0
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 341
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Outer error "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const-string v0, "stop"

    .line 59
    invoke-virtual {p0, v0}, Ljwtc/android/chess/engine/UCIEngine;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const-string v0, "quit"

    .line 50
    invoke-virtual {p0, v0}, Ljwtc/android/chess/engine/UCIEngine;->sendCommand(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Ljwtc/android/chess/engine/UCIEngine;->_process:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Ljwtc/android/chess/engine/UCIEngine;->_process:Ljava/lang/Process;

    :cond_0
    return-void
.end method

.method public initDatabase(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Ljwtc/android/chess/engine/UCIEngine;->databaseName:Ljava/lang/String;

    return-void
.end method

.method public initEngine(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "UCIEngine"

    .line 75
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intitializing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance p1, Ljava/lang/ProcessBuilder;

    invoke-direct {p1, v1}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    .line 80
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/jwtc.android.chess/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    const/4 v1, 0x1

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 82
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/engine/UCIEngine;->_process:Ljava/lang/Process;

    .line 85
    new-instance p1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Ljwtc/android/chess/engine/UCIEngine;->_process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Ljwtc/android/chess/engine/UCIEngine;->_writer:Ljava/io/PrintWriter;

    const-string p1, "uci"

    .line 87
    invoke-virtual {p0, p1}, Ljwtc/android/chess/engine/UCIEngine;->sendCommand(Ljava/lang/String;)V

    .line 89
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Ljwtc/android/chess/engine/UCIEngine;->_process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Ljwtc/android/chess/engine/UCIEngine;->_reader:Ljava/io/BufferedReader;

    .line 91
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Ljwtc/android/chess/engine/UCIEngine$1;

    invoke-direct {v2, p0}, Ljwtc/android/chess/engine/UCIEngine$1;-><init>(Ljwtc/android/chess/engine/UCIEngine;)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public isReady()Z
    .locals 1

    .line 64
    iget-object v0, p0, Ljwtc/android/chess/engine/UCIEngine;->_process:Ljava/lang/Process;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public play()V
    .locals 2

    .line 34
    iget-object v0, p0, Ljwtc/android/chess/engine/UCIEngine;->databaseName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setoption name Book File value /data/data/jwtc.android.chess/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/engine/UCIEngine;->databaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljwtc/android/chess/engine/UCIEngine;->sendCommand(Ljava/lang/String;)V

    :cond_0
    const-string v0, "ucinewgame"

    .line 38
    invoke-virtual {p0, v0}, Ljwtc/android/chess/engine/UCIEngine;->sendCommand(Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position fen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljwtc/chess/JNI;->getInstance()Ljwtc/chess/JNI;

    move-result-object v1

    invoke-virtual {v1}, Ljwtc/chess/JNI;->toFEN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljwtc/android/chess/engine/UCIEngine;->sendCommand(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Ljwtc/android/chess/engine/UCIEngine;->msecs:I

    if-lez v0, :cond_1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "go movetime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljwtc/android/chess/engine/UCIEngine;->msecs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljwtc/android/chess/engine/UCIEngine;->sendCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "go depth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljwtc/android/chess/engine/UCIEngine;->ply:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljwtc/android/chess/engine/UCIEngine;->sendCommand(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected sendCommand(Ljava/lang/String;)V
    .locals 2

    .line 199
    iget-object v0, p0, Ljwtc/android/chess/engine/UCIEngine;->_process:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Ljwtc/android/chess/engine/UCIEngine;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Ljwtc/android/chess/engine/UCIEngine;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UCIEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
