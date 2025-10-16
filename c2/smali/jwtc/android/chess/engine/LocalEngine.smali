.class public Ljwtc/android/chess/engine/LocalEngine;
.super Ljwtc/android/chess/engine/EngineApi;
.source "LocalEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwtc/android/chess/engine/LocalEngine$RunnableImp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalEngine"


# instance fields
.field private engineThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljwtc/android/chess/engine/EngineApi;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Ljwtc/android/chess/engine/LocalEngine;->engineThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 66
    iget-object v0, p0, Ljwtc/android/chess/engine/LocalEngine;->engineThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    iget-object v0, p0, Ljwtc/android/chess/engine/LocalEngine;->engineThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 70
    invoke-static {}, Ljwtc/chess/JNI;->getInstance()Ljwtc/chess/JNI;

    move-result-object v0

    invoke-virtual {v0}, Ljwtc/chess/JNI;->interrupt()V

    .line 71
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    iget-object v0, p0, Ljwtc/android/chess/engine/LocalEngine;->engineThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 71
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Ljwtc/android/chess/engine/LocalEngine;->engineThread:Ljava/lang/Thread;

    return-void
.end method

.method public installDb(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installDb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljwtc/android/chess/engine/LocalEngine$1;

    invoke-direct {v1, p0, p2, p1}, Ljwtc/android/chess/engine/LocalEngine$1;-><init>(Ljwtc/android/chess/engine/LocalEngine;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public play()V
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljwtc/android/chess/engine/LocalEngine;->msecs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljwtc/android/chess/engine/LocalEngine;->ply:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Ljwtc/android/chess/engine/LocalEngine;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwtc/android/chess/engine/EngineListener;

    .line 52
    invoke-interface {v1}, Ljwtc/android/chess/engine/EngineListener;->OnEngineStarted()V

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljwtc/android/chess/engine/LocalEngine$RunnableImp;-><init>(Ljwtc/android/chess/engine/LocalEngine;Ljwtc/android/chess/engine/LocalEngine$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Ljwtc/android/chess/engine/LocalEngine;->engineThread:Ljava/lang/Thread;

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setOpeningDb(Ljava/lang/String;)V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOpeningDb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Ljwtc/chess/JNI;->getInstance()Ljwtc/chess/JNI;

    move-result-object v0

    const/16 v1, 0x11

    .line 20
    invoke-virtual {v0, p1, v1}, Ljwtc/chess/JNI;->loadDB(Ljava/lang/String;I)V

    return-void
.end method
