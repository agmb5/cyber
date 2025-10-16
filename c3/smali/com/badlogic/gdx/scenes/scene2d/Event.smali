.class public Lcom/badlogic/gdx/scenes/scene2d/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# instance fields
.field private bubbles:Z

.field private cancelled:Z

.field private capture:Z

.field private handled:Z

.field private listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private stopped:Z

.field private targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->bubbles:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->cancelled:Z

    .line 59
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->stopped:Z

    .line 60
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->handled:Z

    return-void
.end method

.method public getBubbles()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->bubbles:Z

    return v0
.end method

.method public getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public handle()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->handled:Z

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->cancelled:Z

    return v0
.end method

.method public isCapture()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->capture:Z

    return v0
.end method

.method public isHandled()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->handled:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->stopped:Z

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 71
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 72
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->capture:Z

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->bubbles:Z

    .line 75
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->handled:Z

    .line 76
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->stopped:Z

    .line 77
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->cancelled:Z

    return-void
.end method

.method public setBubbles(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->bubbles:Z

    return-void
.end method

.method public setCapture(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->capture:Z

    return-void
.end method

.method public setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->targetActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Event;->stopped:Z

    return-void
.end method
