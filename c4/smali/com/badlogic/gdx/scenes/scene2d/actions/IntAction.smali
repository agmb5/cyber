.class public Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "IntAction.java"


# instance fields
.field private end:I

.field private start:I

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    .line 36
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    .line 37
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 42
    invoke-direct {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>(F)V

    .line 43
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    .line 44
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    return-void
.end method

.method public constructor <init>(IIFLcom/badlogic/gdx/math/Interpolation;)V
    .locals 0

    .line 49
    invoke-direct {p0, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>(FLcom/badlogic/gdx/math/Interpolation;)V

    .line 50
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    .line 51
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 1

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->value:I

    return-void
.end method

.method public getEnd()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->value:I

    return v0
.end method

.method public setEnd(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->value:I

    return-void
.end method

.method protected update(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 60
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->value:I

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 62
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->value:I

    goto :goto_0

    .line 64
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->start:I

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->end:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/IntAction;->value:I

    :goto_0
    return-void
.end method
