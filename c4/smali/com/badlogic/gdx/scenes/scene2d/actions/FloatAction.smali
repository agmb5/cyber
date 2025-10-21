.class public Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "FloatAction.java"


# instance fields
.field private end:F

.field private start:F

.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 36
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    .line 37
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 42
    invoke-direct {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>(F)V

    .line 43
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    .line 44
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    return-void
.end method

.method public constructor <init>(FFFLcom/badlogic/gdx/math/Interpolation;)V
    .locals 0

    .line 49
    invoke-direct {p0, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>(FLcom/badlogic/gdx/math/Interpolation;)V

    .line 50
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    .line 51
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 1

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->value:F

    return-void
.end method

.method public getEnd()F
    .locals 1

    .line 87
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    return v0
.end method

.method public getStart()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    return v0
.end method

.method public getValue()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->value:F

    return v0
.end method

.method public setEnd(F)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    return-void
.end method

.method public setStart(F)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    return-void
.end method

.method public setValue(F)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->value:F

    return-void
.end method

.method protected update(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 60
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->value:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 62
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->value:F

    goto :goto_0

    .line 64
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->start:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->end:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/FloatAction;->value:F

    :goto_0
    return-void
.end method
