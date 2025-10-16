.class public Ljwtc/android/chess/tools/ImportService;
.super Landroid/app/Service;
.source "ImportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwtc/android/chess/tools/ImportService$ImportApi;,
        Ljwtc/android/chess/tools/ImportService$ThreadMessageHandler;,
        Ljwtc/android/chess/tools/ImportService$LocalBinder;
    }
.end annotation


# static fields
.field public static final DB_POINT:I = 0x9

.field public static final IMPORT_DATABASE:I = 0x5

.field public static final IMPORT_GAMES:I = 0x2

.field public static final IMPORT_OPENINGS:I = 0x4

.field public static final IMPORT_PRACTICE:I = 0x3

.field public static final IMPORT_PUZZLES:I = 0x1

.field public static final PRACTICE_RESET:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ImportService"

.field public static final UCI_DB_INSTALL:I = 0x7

.field public static final UCI_INSTALL:I = 0x6


# instance fields
.field private gameImportProcessor:Ljwtc/android/chess/tools/GameImportProcessor;

.field private importApi:Ljwtc/android/chess/tools/ImportService$ImportApi;

.field protected listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljwtc/android/chess/tools/ImportListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/IBinder;

.field private openingImportProcessor:Ljwtc/android/chess/tools/OpeningImportProcessor;

.field private pgnDbProcessor:Ljwtc/android/chess/tools/PGNDbProcessor;

.field private practiceImportProcessor:Ljwtc/android/chess/tools/PracticeImportProcessor;

.field private puzzleImportProcessor:Ljwtc/android/chess/tools/PuzzleImportProcessor;

.field private updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->listeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->puzzleImportProcessor:Ljwtc/android/chess/tools/PuzzleImportProcessor;

    .line 46
    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->gameImportProcessor:Ljwtc/android/chess/tools/GameImportProcessor;

    .line 47
    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->practiceImportProcessor:Ljwtc/android/chess/tools/PracticeImportProcessor;

    .line 48
    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->openingImportProcessor:Ljwtc/android/chess/tools/OpeningImportProcessor;

    .line 49
    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->pgnDbProcessor:Ljwtc/android/chess/tools/PGNDbProcessor;

    .line 52
    new-instance v0, Ljwtc/android/chess/tools/ImportService$LocalBinder;

    invoke-direct {v0, p0}, Ljwtc/android/chess/tools/ImportService$LocalBinder;-><init>(Ljwtc/android/chess/tools/ImportService;)V

    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->mBinder:Landroid/os/IBinder;

    .line 53
    new-instance v0, Ljwtc/android/chess/tools/ImportService$ThreadMessageHandler;

    invoke-direct {v0, p0, p0}, Ljwtc/android/chess/tools/ImportService$ThreadMessageHandler;-><init>(Ljwtc/android/chess/tools/ImportService;Ljwtc/android/chess/tools/ImportService;)V

    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->updateHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addListener(Ljwtc/android/chess/tools/ImportListener;)V
    .locals 1

    .line 56
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected dispatchEvent(IIII)V
    .locals 3

    .line 284
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/tools/ImportListener;

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-interface {v1, p2}, Ljwtc/android/chess/tools/ImportListener;->OnImportFatalError(I)V

    goto :goto_0

    .line 291
    :cond_1
    invoke-interface {v1, p2}, Ljwtc/android/chess/tools/ImportListener;->OnImportFinished(I)V

    goto :goto_0

    .line 287
    :cond_2
    invoke-interface {v1, p2, p3, p4}, Ljwtc/android/chess/tools/ImportListener;->OnImportProgress(III)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected getUriDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUriDisplayName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImportService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 307
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "_display_name"

    .line 308
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 311
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleThreadMessage(Landroid/os/Message;)V
    .locals 5

    .line 270
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mode"

    const/4 v2, -0x1

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "successCount"

    const/4 v3, 0x0

    .line 272
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "failCount"

    .line 273
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 274
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1, v1, v2, v0}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 66
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ImportService"

    const-string v1, "onDestroy"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->puzzleImportProcessor:Ljwtc/android/chess/tools/PuzzleImportProcessor;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Ljwtc/android/chess/tools/PuzzleImportProcessor;->stopProcessing()V

    .line 255
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->gameImportProcessor:Ljwtc/android/chess/tools/GameImportProcessor;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Ljwtc/android/chess/tools/GameImportProcessor;->stopProcessing()V

    .line 258
    :cond_1
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->practiceImportProcessor:Ljwtc/android/chess/tools/PracticeImportProcessor;

    if-eqz v0, :cond_2

    .line 259
    invoke-virtual {v0}, Ljwtc/android/chess/tools/PracticeImportProcessor;->stopProcessing()V

    .line 261
    :cond_2
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->openingImportProcessor:Ljwtc/android/chess/tools/OpeningImportProcessor;

    if-eqz v0, :cond_3

    .line 262
    invoke-virtual {v0}, Ljwtc/android/chess/tools/OpeningImportProcessor;->stopProcessing()V

    .line 264
    :cond_3
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->pgnDbProcessor:Ljwtc/android/chess/tools/PGNDbProcessor;

    if-eqz v0, :cond_4

    .line 265
    invoke-virtual {v0}, Ljwtc/android/chess/tools/PGNDbProcessor;->stopProcessing()V

    :cond_4
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received start id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImportService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public removeListener(Ljwtc/android/chess/tools/ImportListener;)V
    .locals 1

    .line 60
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startImport(Landroid/net/Uri;I)V
    .locals 9

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImportService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    new-instance v0, Ljwtc/android/chess/tools/ImportService$ImportApi;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ljwtc/android/chess/tools/ImportService$ImportApi;-><init>(Ljwtc/android/chess/tools/ImportService;Ljwtc/android/chess/tools/ImportService$1;)V

    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->importApi:Ljwtc/android/chess/tools/ImportService$ImportApi;

    const/4 v0, 0x4

    const-string v3, "ChessPlayer"

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p1, :cond_9

    .line 233
    :try_start_0
    invoke-virtual {p0, v3, v6}, Ljwtc/android/chess/tools/ImportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "OpeningDb"

    .line 235
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    invoke-virtual {p0, v0, p2, v5, v6}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0, v4, p2, v6, v5}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V

    goto/16 :goto_2

    .line 215
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, v3, v6}, Ljwtc/android/chess/tools/ImportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 216
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v3, "practicePos"

    .line 217
    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v3, "practiceTicks"

    .line 218
    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v3, Ljwtc/android/chess/puzzle/MyPuzzleProvider;->CONTENT_URI_PRACTICES:Landroid/net/Uri;

    const-string v7, "1=1"

    invoke-virtual {p1, v3, v7, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0, v0, p2, v5, v6}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0, v4, p2, v6, v5}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V

    goto/16 :goto_2

    :pswitch_2
    if-eqz p1, :cond_9

    .line 193
    :try_start_2
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljwtc/android/chess/tools/ImportService;->getUriDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 196
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Install UCI database "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-static {v7, p1}, Ljwtc/android/chess/engine/UCIEngine;->installDb(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, v3, v6}, Ljwtc/android/chess/tools/ImportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "UCIDatabase"

    .line 202
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    invoke-virtual {p0, v0, p2, v5, v6}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0, v4, p2, v6, v5}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V

    goto/16 :goto_2

    :pswitch_3
    if-eqz p1, :cond_9

    .line 169
    :try_start_3
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Ljwtc/android/chess/tools/ImportService;->getUriDisplayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Install UCI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 175
    invoke-static {p1, v2}, Ljwtc/android/chess/engine/UCIEngine;->install(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, v3, v6}, Ljwtc/android/chess/tools/ImportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v3, "UCIEngine"

    .line 178
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    invoke-virtual {p0, v0, p2, v5, v6}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0, v4, p2, v6, v5}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V

    goto/16 :goto_2

    :pswitch_4
    if-eqz p1, :cond_9

    .line 153
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->pgnDbProcessor:Ljwtc/android/chess/tools/PGNDbProcessor;

    if-nez v0, :cond_1

    .line 154
    new-instance v0, Ljwtc/android/chess/tools/PGNDbProcessor;

    iget-object v2, p0, Ljwtc/android/chess/tools/ImportService;->updateHandler:Landroid/os/Handler;

    iget-object v3, p0, Ljwtc/android/chess/tools/ImportService;->importApi:Ljwtc/android/chess/tools/ImportService$ImportApi;

    invoke-direct {v0, p2, v2, v3}, Ljwtc/android/chess/tools/PGNDbProcessor;-><init>(ILandroid/os/Handler;Ljwtc/android/chess/services/GameApi;)V

    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->pgnDbProcessor:Ljwtc/android/chess/tools/PGNDbProcessor;

    .line 157
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 158
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->pgnDbProcessor:Ljwtc/android/chess/tools/PGNDbProcessor;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/tools/PGNDbProcessor;->processPGNFile(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0, v4, p2, v6, v5}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V

    goto/16 :goto_2

    :pswitch_5
    if-eqz p1, :cond_9

    .line 138
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->openingImportProcessor:Ljwtc/android/chess/tools/OpeningImportProcessor;

    if-nez v0, :cond_2

    .line 139
    new-instance v0, Ljwtc/android/chess/tools/OpeningImportProcessor;

    iget-object v2, p0, Ljwtc/android/chess/tools/ImportService;->updateHandler:Landroid/os/Handler;

    iget-object v3, p0, Ljwtc/android/chess/tools/ImportService;->importApi:Ljwtc/android/chess/tools/ImportService$ImportApi;

    invoke-direct {v0, p2, v2, v3}, Ljwtc/android/chess/tools/OpeningImportProcessor;-><init>(ILandroid/os/Handler;Ljwtc/android/chess/services/GameApi;)V

    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->openingImportProcessor:Ljwtc/android/chess/tools/OpeningImportProcessor;

    .line 142
    :cond_2
    :try_start_5
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 143
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->openingImportProcessor:Ljwtc/android/chess/tools/OpeningImportProcessor;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/tools/OpeningImportProcessor;->processPGNFile(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0, v4, p2, v6, v6}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V

    goto/16 :goto_2

    .line 121
    :pswitch_6
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->practiceImportProcessor:Ljwtc/android/chess/tools/PracticeImportProcessor;

    if-nez v0, :cond_3

    .line 122
    new-instance v0, Ljwtc/android/chess/tools/PracticeImportProcessor;

    iget-object v1, p0, Ljwtc/android/chess/tools/ImportService;->updateHandler:Landroid/os/Handler;

    iget-object v2, p0, Ljwtc/android/chess/tools/ImportService;->importApi:Ljwtc/android/chess/tools/ImportService$ImportApi;

    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p2, v1, v2, v3}, Ljwtc/android/chess/tools/PracticeImportProcessor;-><init>(ILandroid/os/Handler;Ljwtc/android/chess/services/GameApi;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->practiceImportProcessor:Ljwtc/android/chess/tools/PracticeImportProcessor;

    :cond_3
    if-nez p1, :cond_4

    .line 127
    :try_start_6
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "practice.pgn"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 131
    :goto_0
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->practiceImportProcessor:Ljwtc/android/chess/tools/PracticeImportProcessor;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/tools/PracticeImportProcessor;->processPGNFile(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2

    .line 133
    :catch_6
    invoke-virtual {p0, v4, p2, v6, v6}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V

    goto/16 :goto_2

    :pswitch_7
    if-eqz p1, :cond_9

    .line 104
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->gameImportProcessor:Ljwtc/android/chess/tools/GameImportProcessor;

    if-nez v0, :cond_5

    .line 105
    new-instance v0, Ljwtc/android/chess/tools/GameImportProcessor;

    iget-object v2, p0, Ljwtc/android/chess/tools/ImportService;->updateHandler:Landroid/os/Handler;

    iget-object v3, p0, Ljwtc/android/chess/tools/ImportService;->importApi:Ljwtc/android/chess/tools/ImportService$ImportApi;

    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, p2, v2, v3, v5}, Ljwtc/android/chess/tools/GameImportProcessor;-><init>(ILandroid/os/Handler;Ljwtc/android/chess/services/GameApi;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->gameImportProcessor:Ljwtc/android/chess/tools/GameImportProcessor;

    .line 108
    :cond_5
    :try_start_7
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 109
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".zip"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_6

    .line 110
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportService;->gameImportProcessor:Ljwtc/android/chess/tools/GameImportProcessor;

    invoke-virtual {p1, v0}, Ljwtc/android/chess/tools/GameImportProcessor;->processZipFile(Ljava/io/InputStream;)V

    goto :goto_2

    .line 112
    :cond_6
    iget-object p1, p0, Ljwtc/android/chess/tools/ImportService;->gameImportProcessor:Ljwtc/android/chess/tools/GameImportProcessor;

    invoke-virtual {p1, v0}, Ljwtc/android/chess/tools/GameImportProcessor;->processPGNFile(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_2

    :catch_7
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, v4, p2, v6, v6}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V

    goto :goto_2

    .line 85
    :pswitch_8
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->puzzleImportProcessor:Ljwtc/android/chess/tools/PuzzleImportProcessor;

    if-nez v0, :cond_7

    .line 86
    new-instance v0, Ljwtc/android/chess/tools/PuzzleImportProcessor;

    iget-object v1, p0, Ljwtc/android/chess/tools/ImportService;->updateHandler:Landroid/os/Handler;

    iget-object v2, p0, Ljwtc/android/chess/tools/ImportService;->importApi:Ljwtc/android/chess/tools/ImportService$ImportApi;

    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p2, v1, v2, v3}, Ljwtc/android/chess/tools/PuzzleImportProcessor;-><init>(ILandroid/os/Handler;Ljwtc/android/chess/services/GameApi;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Ljwtc/android/chess/tools/ImportService;->puzzleImportProcessor:Ljwtc/android/chess/tools/PuzzleImportProcessor;

    :cond_7
    if-nez p1, :cond_8

    .line 91
    :try_start_8
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "puzzles.pgn"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    .line 93
    :cond_8
    invoke-virtual {p0}, Ljwtc/android/chess/tools/ImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 95
    :goto_1
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService;->puzzleImportProcessor:Ljwtc/android/chess/tools/PuzzleImportProcessor;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/tools/PuzzleImportProcessor;->processPGNFile(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_2

    .line 97
    :catch_8
    invoke-virtual {p0, v4, p2, v6, v5}, Ljwtc/android/chess/tools/ImportService;->dispatchEvent(IIII)V

    :cond_9
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
