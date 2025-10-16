.class public abstract Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "TemporalAction.java"


# instance fields
.field private began:Z

.field private complete:Z

.field private duration:F

.field private interpolation:Lcom/badlogic/gdx/math/Interpolation;

.field private reverse:Z

.field private time:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 35
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/math/Interpolation;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 39
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    .line 40
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 4

    .line 44
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->getPool()Lcom/badlogic/gdx/utils/Pool;

    move-result-object v0

    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    .line 48
    :try_start_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->began:Z

    if-nez v2, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->begin()V

    .line 50
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->began:Z

    .line 52
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    .line 53
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    cmpl-float v3, v2, p1

    if-ltz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    div-float/2addr v2, p1

    .line 55
    :goto_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v2

    .line 56
    :cond_4
    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reverse:Z

    if-eqz p1, :cond_5

    sub-float v2, v3, v2

    :cond_5
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->update(F)V

    .line 57
    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->end()V

    .line 58
    :cond_6
    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    throw p1
.end method

.method protected begin()V
    .locals 0

    return-void
.end method

.method protected end()V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 1

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    return-void
.end method

.method public getDuration()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    return v0
.end method

.method public getInterpolation()Lcom/badlogic/gdx/math/Interpolation;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    return-object v0
.end method

.method public getTime()F
    .locals 1

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    return v0
.end method

.method public isReverse()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reverse:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reverse:Z

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method

.method public restart()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->began:Z

    .line 86
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->complete:Z

    return-void
.end method

.method public setDuration(F)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->duration:F

    return-void
.end method

.method public setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->interpolation:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method

.method public setReverse(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->reverse:Z

    return-void
.end method

.method public setTime(F)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;->time:F

    return-void
.end method

.method protected abstract update(F)V
.end method
