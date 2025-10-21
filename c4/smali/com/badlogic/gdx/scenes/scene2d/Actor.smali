.class public Lcom/badlogic/gdx/scenes/scene2d/Actor;
.super Ljava/lang/Object;
.source "Actor.java"


# instance fields
.field private final actions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field final color:Lcom/badlogic/gdx/graphics/Color;

.field private debug:Z

.field height:F

.field private final listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field originX:F

.field originY:F

.field parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field rotation:F

.field scaleX:F

.field scaleY:F

.field private stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field private userObject:Ljava/lang/Object;

.field private visible:Z

.field width:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    .line 62
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 72
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 7

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 93
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    :goto_0
    :try_start_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_4

    .line 97
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 98
    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_3

    .line 99
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-ne v4, v3, :cond_2

    move v4, v2

    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v0, v3, v5}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v4

    :goto_1
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    .line 102
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    const/4 v4, 0x0

    .line 103
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/2addr v2, v5

    goto :goto_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Actor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method

.method public addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1

    .line 260
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 263
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_0
    return-void
.end method

.method public addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->add(Ljava/lang/Object;)V

    :cond_0
    return v1

    .line 245
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->add(Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 225
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ancestorsVisible()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->ascendantsVisible()Z

    move-result v0

    return v0
.end method

.method public ascendantsVisible()Z
    .locals 2

    move-object v0, p0

    .line 386
    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 387
    :cond_1
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 0

    .line 295
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    .line 296
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearListeners()V

    return-void
.end method

.method public clearActions()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 283
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public clearListeners()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    return-void
.end method

.method public clipBegin()Z
    .locals 4

    .line 820
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipBegin(FFFF)Z

    move-result v0

    return v0
.end method

.method public clipBegin(FFFF)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpg-float v2, p3, v0

    if-lez v2, :cond_3

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-nez v0, :cond_1

    return v1

    .line 832
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/math/Rectangle;->tmp:Lcom/badlogic/gdx/math/Rectangle;

    .line 833
    iput p1, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 834
    iput p2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 835
    iput p3, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 836
    iput p4, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 837
    const-class p1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/math/Rectangle;

    .line 838
    invoke-virtual {v0, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->calculateScissors(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 839
    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 840
    :cond_2
    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return v1
.end method

.method public clipEnd()V
    .locals 1

    .line 846
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    const/4 v0, 0x1

    .line 979
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 0

    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 0

    .line 956
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    return-void
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 11

    .line 961
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->debug:Z

    if-nez v0, :cond_0

    return-void

    .line 962
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 963
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 964
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFF)V

    return-void
.end method

.method public fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 6

    .line 127
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 128
    :cond_0
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 131
    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 132
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :goto_0
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 135
    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_0

    .line 140
    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 141
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_3

    .line 142
    aget-object v4, v1, v2

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 143
    invoke-virtual {v4, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 144
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 165
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 148
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 149
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 152
    invoke-virtual {p0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 153
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getBubbles()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    goto :goto_2

    .line 154
    :cond_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    goto :goto_2

    .line 157
    :cond_6
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_8

    .line 158
    aget-object v5, v1, v4

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 159
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 162
    :cond_8
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 164
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 165
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public firstAscendant(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_2

    move-object v0, p0

    .line 337
    :cond_0
    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/reflect/ClassReflection;->isInstance(Ljava/lang/Class;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 338
    :cond_1
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 334
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public getActions()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getCaptureListeners()Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getDebug()Z
    .locals 1

    .line 974
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->debug:Z

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 564
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    return v0
.end method

.method public getListeners()Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginX()F
    .locals 1

    .line 642
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .line 650
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    return v0
.end method

.method public getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public getRight()F
    .locals 2

    .line 581
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 739
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 681
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 692
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    return v0
.end method

.method public getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method public getTop()F
    .locals 2

    .line 576
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 553
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 442
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    return v0
.end method

.method public getX(I)F
    .locals 2

    .line 447
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 449
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    :goto_0
    add-float/2addr v0, p1

    goto :goto_1

    :cond_0
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    .line 451
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getY()F
    .locals 1

    .line 479
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    return v0
.end method

.method public getY(I)F
    .locals 2

    .line 506
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 508
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    :goto_0
    add-float/2addr v0, p1

    goto :goto_1

    :cond_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    .line 510
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getZIndex()I
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 815
    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public hasActions()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasKeyboardFocus()Z
    .locals 1

    .line 400
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParent()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScrollFocus()Z
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 209
    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-eq p3, v1, :cond_0

    return-object v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result p3

    if-nez p3, :cond_1

    return-object v0

    :cond_1
    const/4 p3, 0x0

    cmpl-float v1, p1, p3

    if-ltz v1, :cond_2

    .line 211
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    cmpl-float p1, p2, p3

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0
.end method

.method public isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1

    if-eqz p1, :cond_2

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 326
    :cond_1
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 323
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1

    if-eqz p1, :cond_2

    move-object v0, p0

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 316
    :cond_1
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 312
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public isTouchFocusListener()Z
    .locals 5

    .line 423
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 425
    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 426
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v4, p0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isTouchFocusTarget()Z
    .locals 5

    .line 413
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 415
    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 416
    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v4, p0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isTouchable()Z
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    return v0
.end method

.method public localToActorCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 0

    .line 950
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 951
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public localToAscendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    move-object v0, p0

    .line 941
    :cond_0
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToParentCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 942
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_0

    :goto_0
    return-object p2
.end method

.method public localToParentCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 10

    .line 909
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    neg-float v0, v0

    .line 910
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 911
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 912
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 913
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-nez v5, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v0

    if-nez v5, :cond_0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    .line 916
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v3

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 917
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v4

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 919
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 920
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 921
    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v0

    mul-float v6, v6, v1

    add-float/2addr v6, v0

    add-float/2addr v6, v3

    iput v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 922
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v5

    mul-float v0, v0, v2

    add-float/2addr v0, v5

    add-float/2addr v0, v4

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    :cond_1
    const v5, 0x3c8efa35

    mul-float v0, v0, v5

    float-to-double v5, v0

    .line 925
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v0, v7

    .line 926
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 927
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 928
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 929
    iget v8, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v8, v6

    mul-float v8, v8, v1

    .line 930
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v7

    mul-float v1, v1, v2

    mul-float v2, v8, v0

    mul-float v9, v1, v5

    add-float/2addr v2, v9

    add-float/2addr v2, v6

    add-float/2addr v2, v3

    .line 931
    iput v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v5

    mul-float v8, v8, v2

    mul-float v1, v1, v0

    add-float/2addr v8, v1

    add-float/2addr v8, v7

    add-float/2addr v8, v4

    .line 932
    iput v8, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    :goto_0
    return-object p1
.end method

.method public localToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 899
    invoke-virtual {p0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToAscendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->stageToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    const/4 v0, 0x0

    .line 904
    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToAscendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public moveBy(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 546
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 547
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 548
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    :cond_1
    return-void
.end method

.method public notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z
    .locals 5

    .line 176
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    .line 179
    :goto_0
    iget v1, v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->size:I

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    return p1

    .line 181
    :cond_1
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 182
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setCapture(Z)V

    .line 183
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    :cond_2
    const/4 p2, 0x0

    .line 186
    :try_start_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    .line 187
    iget v1, v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->size:I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 188
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->handle()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 189
    :cond_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Actor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 176
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The event target cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 10

    .line 866
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 867
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 868
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 869
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 870
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-nez v5, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v0

    if-nez v5, :cond_0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    .line 873
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v3

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 874
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v4

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 876
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 877
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 878
    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v3

    sub-float/2addr v6, v0

    div-float/2addr v6, v1

    add-float/2addr v6, v0

    iput v6, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 879
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v4

    sub-float/2addr v0, v5

    div-float/2addr v0, v2

    add-float/2addr v0, v5

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    :cond_1
    const v5, 0x3c8efa35

    mul-float v0, v0, v5

    float-to-double v5, v0

    .line 882
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v0, v7

    .line 883
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 884
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 885
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 886
    iget v8, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v8, v3

    sub-float/2addr v8, v6

    .line 887
    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v7

    mul-float v4, v8, v0

    mul-float v9, v3, v5

    add-float/2addr v4, v9

    div-float/2addr v4, v1

    add-float/2addr v4, v6

    .line 888
    iput v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v1, v5

    mul-float v8, v8, v1

    mul-float v3, v3, v0

    add-float/2addr v8, v3

    div-float/2addr v8, v2

    add-float/2addr v8, v7

    .line 889
    iput v8, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    :goto_0
    return-object p1
.end method

.method protected positionChanged()V
    .locals 0

    return-void
.end method

.method public remove()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    return-void
.end method

.method public removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result p1

    return p1

    .line 251
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result p1

    return p1

    .line 234
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rotateBy(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 752
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    add-float/2addr v0, p1

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 753
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotationChanged()V

    :cond_0
    return-void
.end method

.method protected rotationChanged()V
    .locals 0

    return-void
.end method

.method public scaleBy(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 723
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 724
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 725
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    :cond_0
    return-void
.end method

.method public scaleBy(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 732
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 733
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 734
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    :cond_1
    return-void
.end method

.method protected scaleChanged()V
    .locals 0

    return-void
.end method

.method public screenToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-nez v0, :cond_0

    return-object p1

    .line 854
    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public setBounds(FFFF)V
    .locals 1

    .line 629
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 630
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 631
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 632
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 634
    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    cmpl-float p1, p1, p3

    if-nez p1, :cond_2

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    cmpl-float p1, p1, p4

    if-eqz p1, :cond_3

    .line 635
    :cond_2
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 636
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 637
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    :cond_3
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 969
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->debug:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 970
    sput-boolean p1, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1

    .line 568
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 569
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 570
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(FF)V
    .locals 0

    .line 659
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 660
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    return-void
.end method

.method public setOrigin(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x8

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 666
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1

    .line 668
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    goto :goto_0

    .line 670
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    :goto_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 673
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    goto :goto_1

    :cond_2
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 675
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    goto :goto_1

    .line 677
    :cond_3
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    div-float/2addr p1, v1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    :goto_1
    return-void
.end method

.method public setOriginX(F)V
    .locals 0

    .line 646
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    return-void
.end method

.method public setOriginY(F)V
    .locals 0

    .line 654
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    return-void
.end method

.method protected setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    .line 516
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 517
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 518
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 519
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    :cond_1
    return-void
.end method

.method public setPosition(FFI)V
    .locals 2

    and-int/lit8 v0, p3, 0x10

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 527
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    :goto_0
    sub-float/2addr p1, v0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_1

    .line 529
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    .line 532
    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    :goto_2
    sub-float/2addr p2, p3

    goto :goto_3

    :cond_2
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_3

    .line 534
    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    div-float/2addr p3, v1

    goto :goto_2

    .line 536
    :cond_3
    :goto_3
    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float p3, p3, p1

    if-nez p3, :cond_4

    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float p3, p3, p2

    if-eqz p3, :cond_5

    .line 537
    :cond_4
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 538
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 539
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    :cond_5
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 743
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 744
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 745
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotationChanged()V

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 704
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 705
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 706
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 707
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    :cond_1
    return-void
.end method

.method public setScale(FF)V
    .locals 1

    .line 713
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 714
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 715
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 716
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    :cond_1
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 685
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 686
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 687
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 696
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 697
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 698
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    :cond_0
    return-void
.end method

.method public setSize(FF)V
    .locals 1

    .line 602
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 603
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 604
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 605
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    :cond_1
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-void
.end method

.method public setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->userObject:Ljava/lang/Object;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 379
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    .line 557
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 558
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 559
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 1

    .line 456
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 457
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 458
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    :cond_0
    return-void
.end method

.method public setX(FI)V
    .locals 1

    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_0

    .line 467
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    :goto_0
    sub-float/2addr p1, p2

    goto :goto_1

    :cond_0
    and-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_1

    .line 469
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    goto :goto_0

    .line 471
    :cond_1
    :goto_1
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    .line 472
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 473
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    :cond_2
    return-void
.end method

.method public setY(F)V
    .locals 1

    .line 483
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 484
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 485
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    :cond_0
    return-void
.end method

.method public setY(FI)V
    .locals 1

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 494
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    :goto_0
    sub-float/2addr p1, p2

    goto :goto_1

    :cond_0
    and-int/lit8 p2, p2, 0x4

    if-nez p2, :cond_1

    .line 496
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    goto :goto_0

    .line 498
    :cond_1
    :goto_1
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    .line 499
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 500
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    :cond_2
    return-void
.end method

.method public setZIndex(I)Z
    .locals 4

    if-ltz p1, :cond_4

    .line 799
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 801
    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 802
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return v1

    .line 803
    :cond_1
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 804
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_2

    return v1

    .line 805
    :cond_2
    invoke-virtual {v0, p0, v3}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 806
    :cond_3
    invoke-virtual {v0, p1, p0}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    return v3

    .line 798
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ZIndex cannot be < 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sizeBy(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 612
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 613
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 614
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    :cond_0
    return-void
.end method

.method public sizeBy(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 621
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 622
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 623
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    :cond_1
    return-void
.end method

.method protected sizeChanged()V
    .locals 0

    return-void
.end method

.method public stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 860
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p1
.end method

.method public toBack()V
    .locals 1

    const/4 v0, 0x0

    .line 790
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    return-void
.end method

.method public toFront()V
    .locals 1

    const v0, 0x7fffffff

    .line 785
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 984
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 986
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 987
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 988
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
