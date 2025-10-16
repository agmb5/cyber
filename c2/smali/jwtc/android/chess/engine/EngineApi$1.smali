.class Ljwtc/android/chess/engine/EngineApi$1;
.super Landroid/os/Handler;
.source "EngineApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/engine/EngineApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/engine/EngineApi;


# direct methods
.method constructor <init>(Ljwtc/android/chess/engine/EngineApi;)V
    .locals 0

    .line 24
    iput-object p1, p0, Ljwtc/android/chess/engine/EngineApi$1;->this$0:Ljwtc/android/chess/engine/EngineApi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "EngineApi"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "move"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage MOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v1, p0, Ljwtc/android/chess/engine/EngineApi$1;->this$0:Ljwtc/android/chess/engine/EngineApi;

    iget-object v1, v1, Ljwtc/android/chess/engine/EngineApi;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwtc/android/chess/engine/EngineListener;

    .line 31
    invoke-interface {v2, v0}, Ljwtc/android/chess/engine/EngineListener;->OnEngineMove(I)V

    goto :goto_0

    .line 34
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 35
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage INFO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, p0, Ljwtc/android/chess/engine/EngineApi$1;->this$0:Ljwtc/android/chess/engine/EngineApi;

    iget-object v1, v1, Ljwtc/android/chess/engine/EngineApi;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljwtc/android/chess/engine/EngineListener;

    .line 38
    invoke-interface {v2, v0}, Ljwtc/android/chess/engine/EngineListener;->OnEngineInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 41
    iget-object v0, p0, Ljwtc/android/chess/engine/EngineApi$1;->this$0:Ljwtc/android/chess/engine/EngineApi;

    iget-object v0, v0, Ljwtc/android/chess/engine/EngineApi;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/engine/EngineListener;

    .line 42
    invoke-interface {v1}, Ljwtc/android/chess/engine/EngineListener;->OnEngineError()V

    goto :goto_2

    .line 45
    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
