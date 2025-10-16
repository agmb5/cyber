.class public Ljwtc/android/chess/tools/GameImportProcessor;
.super Ljwtc/android/chess/tools/PGNProcessor;
.source "GameImportProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameImportProcessor"


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private gameApi:Ljwtc/android/chess/services/GameApi;


# direct methods
.method public constructor <init>(ILandroid/os/Handler;Ljwtc/android/chess/services/GameApi;Landroid/content/ContentResolver;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ljwtc/android/chess/tools/PGNProcessor;-><init>(ILandroid/os/Handler;)V

    .line 22
    iput-object p3, p0, Ljwtc/android/chess/tools/GameImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    .line 23
    iput-object p4, p0, Ljwtc/android/chess/tools/GameImportProcessor;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized processPGN(Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/tools/GameImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/services/GameApi;->loadPGN(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 32
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "event"

    .line 33
    iget-object v1, p0, Ljwtc/android/chess/tools/GameImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    const-string v2, "Event"

    invoke-virtual {v1, v2}, Ljwtc/android/chess/services/GameApi;->getPGNHeadProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "white"

    .line 34
    iget-object v1, p0, Ljwtc/android/chess/tools/GameImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->getWhite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "black"

    .line 35
    iget-object v1, p0, Ljwtc/android/chess/tools/GameImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->getBlack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pgn"

    .line 36
    iget-object v1, p0, Ljwtc/android/chess/tools/GameImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v1}, Ljwtc/android/chess/services/GameApi;->exportFullPGN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rating"

    const/high16 v1, 0x40200000    # 2.5f

    .line 37
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 40
    iget-object v0, p0, Ljwtc/android/chess/tools/GameImportProcessor;->gameApi:Ljwtc/android/chess/services/GameApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/GameApi;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_0
    const-string v1, "date"

    .line 44
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "content://jwtc.android.chess.helpers.MyPGNProvider/games"

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 47
    iget-object v1, p0, Ljwtc/android/chess/tools/GameImportProcessor;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 48
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 50
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
