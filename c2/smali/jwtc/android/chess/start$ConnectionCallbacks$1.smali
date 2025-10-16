.class Ljwtc/android/chess/start$ConnectionCallbacks$1;
.super Ljava/lang/Object;
.source "start.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/start$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljwtc/android/chess/start$ConnectionCallbacks;


# direct methods
.method constructor <init>(Ljwtc/android/chess/start$ConnectionCallbacks;)V
    .locals 0

    .line 331
    iput-object p1, p0, Ljwtc/android/chess/start$ConnectionCallbacks$1;->this$1:Ljwtc/android/chess/start$ConnectionCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)V
    .locals 6

    .line 335
    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationConnectionResultCallback.onResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    .line 336
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v0

    .line 342
    iget-object v3, p0, Ljwtc/android/chess/start$ConnectionCallbacks$1;->this$1:Ljwtc/android/chess/start$ConnectionCallbacks;

    iget-object v3, v3, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljwtc/android/chess/start;->access$1102(Ljwtc/android/chess/start;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getApplicationStatus()Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-interface {p1}, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;->getWasLaunched()Z

    move-result p1

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "application name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0}, Lcom/google/android/gms/cast/ApplicationMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sessionId: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljwtc/android/chess/start$ConnectionCallbacks$1;->this$1:Ljwtc/android/chess/start$ConnectionCallbacks;

    iget-object v0, v0, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    .line 349
    invoke-static {v0}, Ljwtc/android/chess/start;->access$1100(Ljwtc/android/chess/start;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", wasLaunched: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object p1, p0, Ljwtc/android/chess/start$ConnectionCallbacks$1;->this$1:Ljwtc/android/chess/start$ConnectionCallbacks;

    iget-object p1, p1, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    invoke-static {p1, v1}, Ljwtc/android/chess/start;->access$1202(Ljwtc/android/chess/start;Z)Z

    .line 355
    iget-object p1, p0, Ljwtc/android/chess/start$ConnectionCallbacks$1;->this$1:Ljwtc/android/chess/start$ConnectionCallbacks;

    iget-object p1, p1, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    new-instance v0, Ljwtc/android/chess/start$ChessChannel;

    iget-object v1, p0, Ljwtc/android/chess/start$ConnectionCallbacks$1;->this$1:Ljwtc/android/chess/start$ConnectionCallbacks;

    iget-object v1, v1, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    invoke-direct {v0, v1}, Ljwtc/android/chess/start$ChessChannel;-><init>(Ljwtc/android/chess/start;)V

    invoke-static {p1, v0}, Ljwtc/android/chess/start;->access$1002(Ljwtc/android/chess/start;Ljwtc/android/chess/start$ChessChannel;)Ljwtc/android/chess/start$ChessChannel;

    .line 357
    :try_start_0
    sget-object p1, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v0, p0, Ljwtc/android/chess/start$ConnectionCallbacks$1;->this$1:Ljwtc/android/chess/start$ConnectionCallbacks;

    iget-object v0, v0, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    .line 358
    invoke-static {v0}, Ljwtc/android/chess/start;->access$800(Ljwtc/android/chess/start;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iget-object v1, p0, Ljwtc/android/chess/start$ConnectionCallbacks$1;->this$1:Ljwtc/android/chess/start$ConnectionCallbacks;

    iget-object v1, v1, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    .line 359
    invoke-static {v1}, Ljwtc/android/chess/start;->access$1000(Ljwtc/android/chess/start;)Ljwtc/android/chess/start$ChessChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljwtc/android/chess/start$ChessChannel;->getNamespace()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ljwtc/android/chess/start$ConnectionCallbacks$1;->this$1:Ljwtc/android/chess/start$ConnectionCallbacks;

    iget-object v3, v3, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    .line 360
    invoke-static {v3}, Ljwtc/android/chess/start;->access$1000(Ljwtc/android/chess/start;)Ljwtc/android/chess/start$ChessChannel;

    move-result-object v3

    .line 357
    invoke-interface {p1, v0, v1, v3}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Exception while creating channel"

    .line 362
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p1, "application could not launch"

    .line 367
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p1, p0, Ljwtc/android/chess/start$ConnectionCallbacks$1;->this$1:Ljwtc/android/chess/start$ConnectionCallbacks;

    iget-object p1, p1, Ljwtc/android/chess/start$ConnectionCallbacks;->this$0:Ljwtc/android/chess/start;

    invoke-static {p1, v1}, Ljwtc/android/chess/start;->access$700(Ljwtc/android/chess/start;Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 331
    check-cast p1, Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    invoke-virtual {p0, p1}, Ljwtc/android/chess/start$ConnectionCallbacks$1;->onResult(Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;)V

    return-void
.end method
