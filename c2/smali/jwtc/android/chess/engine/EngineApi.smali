.class public abstract Ljwtc/android/chess/engine/EngineApi;
.super Ljava/lang/Object;
.source "EngineApi.java"


# static fields
.field public static final LEVEL_PLY:I = 0x2

.field public static final LEVEL_TIME:I = 0x1

.field protected static final MSG_ERROR:I = 0x3

.field protected static final MSG_INFO:I = 0x2

.field protected static final MSG_MOVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EngineApi"


# instance fields
.field protected listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljwtc/android/chess/engine/EngineListener;",
            ">;"
        }
    .end annotation
.end field

.field protected msecs:I

.field protected ply:I

.field protected updateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Ljwtc/android/chess/engine/EngineApi;->msecs:I

    .line 20
    iput v0, p0, Ljwtc/android/chess/engine/EngineApi;->ply:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljwtc/android/chess/engine/EngineApi;->listeners:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljwtc/android/chess/engine/EngineApi$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/engine/EngineApi$1;-><init>(Ljwtc/android/chess/engine/EngineApi;)V

    iput-object v0, p0, Ljwtc/android/chess/engine/EngineApi;->updateHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public addListener(Ljwtc/android/chess/engine/EngineListener;)V
    .locals 1

    .line 91
    iget-object v0, p0, Ljwtc/android/chess/engine/EngineApi;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract destroy()V
.end method

.method public abstract isReady()Z
.end method

.method public abstract play()V
.end method

.method public removeListener(Ljwtc/android/chess/engine/EngineListener;)V
    .locals 1

    .line 95
    iget-object v0, p0, Ljwtc/android/chess/engine/EngineApi;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendErrorMessageFromThread()V
    .locals 2

    .line 68
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 69
    iput v1, v0, Landroid/os/Message;->what:I

    .line 70
    iget-object v1, p0, Ljwtc/android/chess/engine/EngineApi;->updateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageFromThread(Ljava/lang/String;)V
    .locals 3

    .line 50
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x2

    .line 52
    iput v2, v0, Landroid/os/Message;->what:I

    const-string v2, "message"

    .line 53
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 55
    iget-object p1, p0, Ljwtc/android/chess/engine/EngineApi;->updateHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMoveMessageFromThread(I)V
    .locals 3

    .line 59
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "move"

    .line 61
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 62
    iput p1, v0, Landroid/os/Message;->what:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 64
    iget-object p1, p0, Ljwtc/android/chess/engine/EngineApi;->updateHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMsecs(I)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMsecs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EngineApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput p1, p0, Ljwtc/android/chess/engine/EngineApi;->msecs:I

    const/4 p1, 0x0

    .line 81
    iput p1, p0, Ljwtc/android/chess/engine/EngineApi;->ply:I

    return-void
.end method

.method public setPly(I)V
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EngineApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput p1, p0, Ljwtc/android/chess/engine/EngineApi;->ply:I

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Ljwtc/android/chess/engine/EngineApi;->msecs:I

    return-void
.end method
