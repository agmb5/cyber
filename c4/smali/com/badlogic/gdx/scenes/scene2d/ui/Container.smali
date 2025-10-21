.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Container.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;"
    }
.end annotation


# instance fields
.field private actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private align:I

.field private background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field private clip:Z

.field private fillX:F

.field private fillY:F

.field private maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

.field private round:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 22
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 23
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 24
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 25
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->round:Z

    .line 34
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTransform(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method


# virtual methods
.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use Container#setActor."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use Container#setActor."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use Container#setActor."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use Container#setActor."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 569
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    return-object p0
.end method

.method public background(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    return-object p0
.end method

.method public bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 595
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, -0x3

    .line 596
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 575
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    return-object p0
.end method

.method public clip()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 720
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setClip(Z)V

    return-object p0
.end method

.method public clip(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 725
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setClip(Z)V

    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 5

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->validate()V

    .line 45
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 48
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 51
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 52
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 51
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipBegin(FFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 54
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 55
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipEnd()V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getY()F

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V

    .line 62
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    :goto_1
    return-void
.end method

.method protected drawBackground(Lcom/badlogic/gdx/graphics/g2d/Batch;FFF)V
    .locals 10

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 71
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v0, v0, p2

    invoke-interface {p1, v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 72
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v8

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v9

    move-object v5, p1

    move v6, p3

    move v7, p4

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 5

    .line 750
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->validate()V

    .line 751
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->isTransform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 753
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    if-eqz v0, :cond_1

    .line 754
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 755
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 756
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipBegin(FFFF)Z

    move-result v0

    goto :goto_0

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 758
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 757
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipBegin(FFFF)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 760
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 761
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clipEnd()V

    goto :goto_1

    .line 764
    :cond_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 765
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    goto :goto_2

    .line 767
    :cond_3
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    :goto_2
    return-void
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 529
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 530
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    return-object p0
.end method

.method public fill(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 547
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    .line 548
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    return-object p0
.end method

.method public fill(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 561
    :goto_0
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 562
    :goto_1
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    return-object p0
.end method

.method public fill(ZZ)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 554
    :goto_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 555
    :goto_1
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    return-object p0
.end method

.method public fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 536
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    return-object p0
.end method

.method public fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 542
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    return-object p0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getAlign()I
    .locals 1

    .line 710
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    return v0
.end method

.method public getBackground()Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-object v0
.end method

.method public getClip()Z
    .locals 1

    .line 738
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    return v0
.end method

.method public getFillX()F
    .locals 1

    .line 702
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    return v0
.end method

.method public getFillY()F
    .locals 1

    .line 706
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    return v0
.end method

.method public getMaxHeight()F
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getMaxHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMaxWidth()F
    .locals 3

    .line 644
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getMaxWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinHeight()F
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getMinHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getMinWidth()F
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadBottom()F
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadBottomValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadLeft()F
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadLeftValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadRight()F
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadRightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadTop()F
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    return v0
.end method

.method public getPadTopValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPadX()F
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPadY()F
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPrefHeight()F
    .locals 3

    .line 634
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 635
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getMinHeight()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getPrefHeightValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public getPrefWidth()F
    .locals 3

    .line 624
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    .line 625
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getMinWidth()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v2

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getPrefWidthValue()Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object v0
.end method

.method public height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 286
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    return-object p0
.end method

.method public height(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 278
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 279
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 280
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 277
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "height cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3

    .line 742
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    .line 744
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    cmpl-float v2, p1, v2

    if-gez v2, :cond_1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    :cond_1
    return-object v0

    .line 746
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    return-object p1
.end method

.method public layout()V
    .locals 13

    .line 108
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v1

    .line 111
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 112
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    invoke-virtual {v4, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 113
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v5

    .line 114
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v6

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v7

    .line 115
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v8

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F

    move-result v9

    .line 118
    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    const/4 v11, 0x0

    cmpl-float v12, v10, v11

    if-lez v12, :cond_1

    mul-float v10, v10, v2

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v10

    :goto_0
    cmpg-float v6, v10, v4

    if-gez v6, :cond_2

    goto :goto_1

    :cond_2
    move v4, v10

    :goto_1
    cmpl-float v6, v8, v11

    if-lez v6, :cond_3

    cmpl-float v6, v4, v8

    if-lez v6, :cond_3

    goto :goto_2

    :cond_3
    move v8, v4

    .line 126
    :goto_2
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    cmpl-float v6, v4, v11

    if-lez v6, :cond_4

    mul-float v4, v4, v3

    goto :goto_3

    .line 129
    :cond_4
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_3
    cmpg-float v6, v4, v5

    if-gez v6, :cond_5

    goto :goto_4

    :cond_5
    move v5, v4

    :goto_4
    cmpl-float v4, v9, v11

    if-lez v4, :cond_6

    cmpl-float v4, v5, v9

    if-lez v4, :cond_6

    goto :goto_5

    :cond_6
    move v9, v5

    .line 134
    :goto_5
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    and-int/lit8 v5, v4, 0x10

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_7

    sub-float/2addr v2, v8

    :goto_6
    add-float/2addr v0, v2

    goto :goto_7

    :cond_7
    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_8

    sub-float/2addr v2, v8

    div-float/2addr v2, v6

    goto :goto_6

    :cond_8
    :goto_7
    and-int/lit8 v2, v4, 0x2

    if-eqz v2, :cond_9

    sub-float/2addr v3, v9

    :goto_8
    add-float/2addr v1, v3

    goto :goto_9

    :cond_9
    and-int/lit8 v2, v4, 0x4

    if-nez v2, :cond_a

    sub-float/2addr v3, v9

    div-float/2addr v3, v6

    goto :goto_8

    .line 145
    :cond_a
    :goto_9
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->round:Z

    if-eqz v2, :cond_b

    .line 146
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 147
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    .line 148
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v8, v2

    .line 149
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v9, v2

    .line 152
    :cond_b
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v0, v1, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 153
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    :cond_c
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 588
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x11

    .line 589
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    return-object p0
.end method

.method public maxHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 439
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public maxHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 417
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 416
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxHeight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 423
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    return-object p0
.end method

.method public maxSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 429
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    return-object p0
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 395
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 396
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 394
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 404
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 405
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 403
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 402
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 434
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public maxWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 411
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 410
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxWidth cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 337
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public minHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 315
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 314
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minHeight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 321
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    return-object p0
.end method

.method public minSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 327
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    return-object p0
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 293
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 294
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 292
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 302
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 303
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 301
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public minWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 332
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public minWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 309
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 308
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minWidth cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 491
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    .line 492
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 493
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 494
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 495
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 500
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 501
    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 502
    invoke-static {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 503
    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 446
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 447
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 448
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 449
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 445
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "pad cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 458
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 459
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 460
    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 461
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 457
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "right cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bottom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 455
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "left cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 454
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "top cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 518
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public padBottom(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 479
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padBottom:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 478
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padBottom cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 513
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public padLeft(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 473
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padLeft:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 472
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padLeft cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 523
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public padRight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 485
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padRight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 484
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padRight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 508
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public padTop(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 467
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->padTop:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 466
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "padTop cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prefHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 388
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public prefHeight(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 366
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 365
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "prefHeight cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prefSize(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 378
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    return-object p0
.end method

.method public prefSize(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 372
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    return-object p0
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 344
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 345
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 343
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prefSize(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 353
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 354
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 352
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 351
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prefWidth(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 383
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0
.end method

.method public prefWidth(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 360
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 359
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "prefWidth cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 206
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, 0x1

    return p1

    .line 204
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 214
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result p1

    return p1

    .line 211
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "actor cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 0

    .line 218
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    .line 219
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne p1, p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_0
    return-object p1
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 602
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, -0x9

    .line 603
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    return-object p0
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eq p1, p0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 165
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 166
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p1, :cond_2

    .line 167
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_2
    return-void

    .line 163
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be the Container."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Z)V

    return-void
.end method

.method public setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Z)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    .line 90
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;->zero:Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->pad(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result p2

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v0

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v1

    invoke-interface {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result p1

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->invalidate()V

    :cond_2
    return-void
.end method

.method public setClip(Z)V
    .locals 0

    .line 732
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->clip:Z

    .line 733
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->setTransform(Z)V

    .line 734
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->invalidate()V

    return-void
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 2

    .line 157
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 158
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->fillY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;->setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V

    :cond_0
    return-void
.end method

.method public setRound(Z)V
    .locals 0

    .line 715
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->round:Z

    return-void
.end method

.method public size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 250
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    return-object p0
.end method

.method public size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 256
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    return-object p0
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 226
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 227
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 228
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 229
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 230
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 231
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 225
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 239
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 240
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 241
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 242
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 243
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 244
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxHeight:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public top()Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 581
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    or-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x5

    .line 582
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->align:I

    return-object p0
.end method

.method public width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    .line 271
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;->valueOf(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Value$Fixed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    return-object p0
.end method

.method public width(Lcom/badlogic/gdx/scenes/scene2d/ui/Value;)Lcom/badlogic/gdx/scenes/scene2d/ui/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Value;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Container<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 263
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->minWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 264
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->prefWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    .line 265
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->maxWidth:Lcom/badlogic/gdx/scenes/scene2d/ui/Value;

    return-object p0

    .line 262
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "width cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
