.class public Ljwtc/android/chess/tools/PuzzleImportProcessor;
.super Ljwtc/android/chess/tools/PGNProcessor;
.source "PuzzleImportProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PuzzleImportProcessor"


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private gameApi:Ljwtc/android/chess/services/GameApi;


# direct methods
.method public constructor <init>(ILandroid/os/Handler;Ljwtc/android/chess/services/GameApi;Landroid/content/ContentResolver;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Ljwtc/android/chess/tools/PGNProcessor;-><init>(ILandroid/os/Handler;)V

    .line 21
    iput-object p3, p0, Ljwtc/android/chess/tools/PuzzleImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    .line 22
    iput-object p4, p0, Ljwtc/android/chess/tools/PuzzleImportProcessor;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized processPGN(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/tools/PuzzleImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/services/GameApi;->loadPGN(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "pgn"

    .line 30
    iget-object v1, p0, Ljwtc/android/chess/tools/PuzzleImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->exportFullPGN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Ljwtc/android/chess/tools/PuzzleImportProcessor;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->CONTENT_URI_PUZZLES:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 33
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 35
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
