.class Ljwtc/android/chess/start$ConnectionCallbacks;
.super Ljava/lang/Object;
.source "start.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/start;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/start;


# direct methods
.method private constructor <init>(Ljwtc/android/chess/start;)V
    .locals 0

    .line 294
    iput-object p1, p0, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljwtc/android/chess/start;Ljwtc/android/chess/start$1;)V
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Ljwtc/android/chess/start$ConnectionCallbacks;-><init>(Ljwtc/android/chess/start;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "start"

    const-string v1, "onConnected"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    invoke-static {v1}, Ljwtc/android/chess/start;->access$800(Ljwtc/android/chess/start;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 308
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    invoke-static {v1}, Ljwtc/android/chess/start;->access$900(Ljwtc/android/chess/start;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    invoke-static {v1, v2}, Ljwtc/android/chess/start;->access$902(Ljwtc/android/chess/start;Z)Z

    if-eqz p1, :cond_1

    const-string v1, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    .line 313
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "App  is no longer running"

    .line 314
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p1, p0, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljwtc/android/chess/start;->access$700(Ljwtc/android/chess/start;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 319
    :cond_1
    :try_start_1
    sget-object p1, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    .line 320
    invoke-static {v1}, Ljwtc/android/chess/start;->access$800(Ljwtc/android/chess/start;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    .line 321
    invoke-static {v2}, Ljwtc/android/chess/start;->access$1000(Ljwtc/android/chess/start;)Ljwtc/android/chess/start$ChessChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljwtc/android/chess/start$ChessChannel;->getNamespace()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    .line 322
    invoke-static {v3}, Ljwtc/android/chess/start;->access$1000(Ljwtc/android/chess/start;)Ljwtc/android/chess/start$ChessChannel;

    move-result-object v3

    .line 319
    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "Exception while creating channel"

    .line 324
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 329
    :cond_2
    sget-object p1, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    invoke-static {v1}, Ljwtc/android/chess/start;->access$800(Ljwtc/android/chess/start;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const-string v3, "05EB93C6"

    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    new-instance v1, Ljwtc/android/chess/start$ConnectionCallbacks$1;

    invoke-direct {v1, p0}, Ljwtc/android/chess/start$ConnectionCallbacks$1;-><init>(Ljwtc/android/chess/start$ConnectionCallbacks;)V

    .line 330
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "Failed to launch application"

    .line 374
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    const-string p1, "start"

    const-string v0, "onConnectionSuspended"

    .line 380
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object p1, p0, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljwtc/android/chess/start;->access$902(Ljwtc/android/chess/start;Z)Z

    return-void
.end method
