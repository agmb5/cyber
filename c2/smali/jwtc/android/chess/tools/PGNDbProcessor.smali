.class public Ljwtc/android/chess/tools/PGNDbProcessor;
.super Ljwtc/android/chess/tools/PGNProcessor;
.source "PGNDbProcessor.java"


# instance fields
.field private _arrKeys:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private _untilPly:I

.field private gameApi:Ljwtc/android/chess/services/GameApi;

.field private jni:Ljwtc/chess/JNI;


# direct methods
.method public constructor <init>(ILandroid/os/Handler;Ljwtc/android/chess/services/GameApi;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Ljwtc/android/chess/tools/PGNProcessor;-><init>(ILandroid/os/Handler;)V

    const/16 p1, 0x11

    .line 15
    iput p1, p0, Ljwtc/android/chess/tools/PGNDbProcessor;->_untilPly:I

    .line 22
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Ljwtc/android/chess/tools/PGNDbProcessor;->_arrKeys:Ljava/util/TreeSet;

    .line 23
    invoke-static {}, Ljwtc/chess/JNI;->getInstance()Ljwtc/chess/JNI;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/tools/PGNDbProcessor;->jni:Ljwtc/chess/JNI;

    .line 24
    iput-object p3, p0, Ljwtc/android/chess/tools/PGNDbProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized processPGN(Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/tools/PGNDbProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/services/GameApi;->loadPGN(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 33
    iget-object p1, p0, Ljwtc/android/chess/tools/PGNDbProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {p1}, Ljwtc/android/chess/services/GameApi;->getPGNSize()I

    move-result p1

    :goto_0
    if-gt v0, p1, :cond_1

    .line 36
    iget v1, p0, Ljwtc/android/chess/tools/PGNDbProcessor;->_untilPly:I

    if-gt v0, v1, :cond_1

    .line 38
    iget-object v1, p0, Ljwtc/android/chess/tools/PGNDbProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1, v0}, Ljwtc/android/chess/services/GameApi;->jumptoMove(I)V

    .line 40
    iget-object v1, p0, Ljwtc/android/chess/tools/PGNDbProcessor;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v1}, Ljwtc/chess/JNI;->getHashKey()J

    move-result-wide v1

    .line 42
    iget-object v3, p0, Ljwtc/android/chess/tools/PGNDbProcessor;->_arrKeys:Ljava/util/TreeSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    iget-object v3, p0, Ljwtc/android/chess/tools/PGNDbProcessor;->_arrKeys:Ljava/util/TreeSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 52
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeHashKeysToFile(Ljava/lang/String;)V
    .locals 10

    const-string v0, "import"

    .line 64
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 85
    iget-object v4, p0, Ljwtc/android/chess/tools/PGNDbProcessor;->_arrKeys:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 86
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    const/16 v8, 0x38

    ushr-long v8, v5, v8

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v3, v7

    const/4 v7, 0x1

    const/16 v8, 0x30

    ushr-long v8, v5, v8

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v3, v7

    const/4 v7, 0x2

    const/16 v8, 0x28

    ushr-long v8, v5, v8

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v3, v7

    const/4 v7, 0x3

    const/16 v8, 0x20

    ushr-long v8, v5, v8

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v3, v7

    const/4 v7, 0x4

    const/16 v8, 0x18

    ushr-long v8, v5, v8

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v3, v7

    const/4 v7, 0x5

    const/16 v8, 0x10

    ushr-long v8, v5, v8

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v3, v7

    const/4 v7, 0x6

    ushr-long v8, v5, v2

    long-to-int v9, v8

    int-to-byte v8, v9

    aput-byte v8, v3, v7

    const/4 v7, 0x7

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v3, v7

    .line 102
    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 110
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 111
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrote hash keys to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeHashkeys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
