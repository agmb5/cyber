.class public Ljwtc/android/chess/tools/PracticeImportProcessor;
.super Ljwtc/android/chess/tools/PGNProcessor;
.source "PracticeImportProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PracticeImportProcessor"


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

.field private contentResolver:Landroid/content/ContentResolver;

.field private gameApi:Ljwtc/android/chess/services/GameApi;

.field private jni:Ljwtc/chess/JNI;


# direct methods
.method public constructor <init>(ILandroid/os/Handler;Ljwtc/android/chess/services/GameApi;Landroid/content/ContentResolver;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Ljwtc/android/chess/tools/PGNProcessor;-><init>(ILandroid/os/Handler;)V

    .line 27
    invoke-static {}, Ljwtc/chess/JNI;->getInstance()Ljwtc/chess/JNI;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->jni:Ljwtc/chess/JNI;

    .line 28
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->_arrKeys:Ljava/util/TreeSet;

    .line 29
    iput-object p3, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    .line 30
    iput-object p4, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public processPGN(Ljava/lang/String;)Z
    .locals 14

    .line 36
    iget-object v0, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/services/GameApi;->loadPGN(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 38
    iget-object p1, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p1}, Ljwtc/chess/JNI;->getState()I

    move-result p1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    .line 40
    iget-object p1, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->jni:Ljwtc/chess/JNI;

    invoke-virtual {p1}, Ljwtc/chess/JNI;->getHashKey()J

    move-result-wide v1

    .line 42
    iget-object p1, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->_arrKeys:Ljava/util/TreeSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 43
    iget-object p1, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->_arrKeys:Ljava/util/TreeSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p1, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {p1}, Ljwtc/android/chess/services/GameApi;->getPGNSize()I

    move-result p1

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    .line 52
    iget-object v3, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    .line 53
    invoke-virtual {v3, p1}, Ljwtc/android/chess/services/GameApi;->exportMovesPGNFromPly(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    iget-object v5, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    add-int/lit8 v6, p1, -0x3

    .line 55
    invoke-virtual {v5, v6}, Ljwtc/android/chess/services/GameApi;->exportMovesPGNFromPly(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    if-lt p1, v1, :cond_5

    move-object v1, v4

    const/4 p1, 0x0

    :goto_0
    const-string v5, "PracticeImportProcessor"

    const/4 v7, 0x4

    if-gt v6, v7, :cond_4

    const/4 v8, 0x0

    :goto_1
    if-gt v8, p1, :cond_0

    .line 64
    iget-object v9, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v9}, Ljwtc/android/chess/services/GameApi;->undoMove()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 67
    :cond_0
    iget-object v8, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v8}, Ljwtc/chess/JNI;->toFEN()Ljava/lang/String;

    move-result-object v8

    .line 69
    iget-object v9, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v9, v6}, Ljwtc/chess/JNI;->searchDepth(I)V

    .line 71
    iget-object v9, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v9}, Ljwtc/chess/JNI;->getMove()I

    move-result v9

    .line 72
    iget-object v10, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v10}, Ljwtc/chess/JNI;->peekSearchBestValue()I

    move-result v10

    const v11, 0x186a0

    .line 76
    rem-int/lit8 v12, v6, 0x2

    if-nez v12, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, -0x1

    :goto_2
    mul-int v13, v13, v11

    if-ne v10, v13, :cond_4

    iget-object v10, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v10, v9}, Ljwtc/chess/JNI;->move(I)I

    move-result v9

    if-eqz v9, :cond_4

    .line 77
    iget-object v9, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    iget-object v10, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v10}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v10

    sub-int/2addr v10, v3

    iget-object v11, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v11}, Ljwtc/chess/JNI;->getMyMoveToString()Ljava/lang/String;

    move-result-object v11

    iget-object v13, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->jni:Ljwtc/chess/JNI;

    invoke-virtual {v13}, Ljwtc/chess/JNI;->getMyMove()I

    move-result v13

    invoke-virtual {v9, v10, v11, v4, v13}, Ljwtc/android/chess/services/GameApi;->addPGNEntry(ILjava/lang/String;Ljava/lang/String;I)V

    if-nez v12, :cond_3

    if-ne v6, v7, :cond_2

    const-string v1, "YESS"

    .line 82
    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FEN \""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\"]\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, p1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 98
    :try_start_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "pgn"

    .line 99
    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v1, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->CONTENT_URI_PRACTICES:Landroid/net/Uri;

    .line 102
    iget-object v2, p0, Ljwtc/android/chess/tools/PracticeImportProcessor;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method
