.class public Lcom/badlogic/gdx/scenes/scene2d/Group;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Group.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;


# static fields
.field private static final tmp:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field final children:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation
.end field

.field private final computedTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private cullingArea:Lcom/badlogic/gdx/math/Rectangle;

.field private final oldTransform:Lcom/badlogic/gdx/math/Matrix4;

.field transform:Z

.field private final worldTransform:Lcom/badlogic/gdx/math/Affine2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->tmp:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 39
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Affine2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Affine2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Affine2;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->computedTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    .line 43
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 4

    .line 47
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 50
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    .line 263
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p0, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 269
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 270
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    .line 308
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p0, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    .line 313
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    goto :goto_1

    .line 314
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 317
    :goto_1
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 318
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 319
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    .line 277
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lt p1, v0, :cond_2

    .line 282
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    .line 285
    :goto_0
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 286
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 287
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    .line 293
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-ne v0, p0, :cond_0

    return-void

    .line 295
    :cond_0
    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    .line 298
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->insert(ILjava/lang/Object;)V

    .line 299
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 300
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 301
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method protected applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 205
    invoke-interface {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method protected applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 219
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 220
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    return-void
.end method

.method protected childrenChanged()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    .line 367
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clear()V

    .line 368
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    return-void
.end method

.method public clearChildren()V
    .locals 5

    .line 354
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 355
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 356
    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 357
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 358
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->clear()V

    .line 362
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-void
.end method

.method protected computeTransform()Lcom/badlogic/gdx/math/Matrix4;
    .locals 9

    .line 184
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Affine2;

    .line 185
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originX:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->originY:F

    .line 186
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    add-float v1, v0, v7

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    add-float v2, v0, v8

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->rotation:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->scaleY:F

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/Affine2;->setToTrnRotScl(FFFFF)Lcom/badlogic/gdx/math/Affine2;

    const/4 v0, 0x0

    cmpl-float v1, v7, v0

    if-nez v1, :cond_0

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_1

    :cond_0
    neg-float v0, v7

    neg-float v1, v8

    .line 187
    invoke-virtual {v6, v0, v1}, Lcom/badlogic/gdx/math/Affine2;->translate(FF)Lcom/badlogic/gdx/math/Affine2;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :goto_0
    if-eqz v0, :cond_3

    .line 192
    iget-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 195
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->worldTransform:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/math/Affine2;->preMul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->computedTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->computedTransform:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    const/4 v0, 0x1

    .line 467
    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 59
    iget-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :cond_1
    return-void
.end method

.method protected drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 67
    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->color:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v2, v2, p2

    .line 68
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 69
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 70
    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    .line 73
    iget v8, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 74
    iget v9, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v9, v8

    .line 75
    iget v10, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 76
    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v5, v10

    .line 77
    iget-boolean v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v11, :cond_2

    .line 78
    iget v7, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_0
    if-ge v6, v7, :cond_c

    .line 79
    aget-object v11, v4, v6

    .line 80
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v13, v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpg-float v14, v12, v9

    if-gtz v14, :cond_1

    cmpg-float v14, v13, v5

    if-gtz v14, :cond_1

    .line 82
    iget v14, v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v12, v14

    cmpl-float v12, v12, v8

    if-ltz v12, :cond_1

    iget v12, v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v13, v12

    cmpl-float v12, v13, v10

    if-ltz v12, :cond_1

    .line 83
    invoke-virtual {v11, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 87
    :cond_2
    iget v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iget v12, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 88
    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 89
    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 90
    iget v7, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_2
    if-ge v6, v7, :cond_6

    .line 91
    aget-object v13, v4, v6

    .line 92
    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_3

    .line 93
    :cond_3
    iget v14, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v15, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpg-float v16, v14, v9

    if-gtz v16, :cond_4

    cmpg-float v16, v15, v5

    if-gtz v16, :cond_4

    move/from16 p2, v5

    .line 94
    iget v5, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v5, v14

    cmpl-float v5, v5, v8

    if-ltz v5, :cond_5

    iget v5, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v5, v15

    cmpl-float v5, v5, v10

    if-ltz v5, :cond_5

    add-float v5, v14, v11

    .line 95
    iput v5, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float v5, v15, v12

    .line 96
    iput v5, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 97
    invoke-virtual {v13, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 98
    iput v14, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 99
    iput v15, v13, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 p2, v5

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, p2

    goto :goto_2

    .line 102
    :cond_6
    iput v11, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 103
    iput v12, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    goto :goto_9

    .line 107
    :cond_7
    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v5, :cond_9

    .line 108
    iget v5, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_5
    if-ge v6, v5, :cond_c

    .line 109
    aget-object v7, v4, v6

    .line 110
    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_6

    .line 111
    :cond_8
    invoke-virtual {v7, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 115
    :cond_9
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 116
    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 117
    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 118
    iget v7, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_7
    if-ge v6, v7, :cond_b

    .line 119
    aget-object v9, v4, v6

    .line 120
    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_8

    .line 121
    :cond_a
    iget v10, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v11, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float v12, v10, v5

    .line 122
    iput v12, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float v12, v11, v8

    .line 123
    iput v12, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 124
    invoke-virtual {v9, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 125
    iput v10, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 126
    iput v11, v9, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 128
    :cond_b
    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 129
    iput v8, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 132
    :cond_c
    :goto_9
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 1

    .line 138
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 139
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 140
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 141
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    :cond_1
    return-void
.end method

.method protected drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 10

    .line 149
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 150
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 152
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 153
    iget v2, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_0
    if-ge v3, v2, :cond_2

    .line 154
    aget-object v4, v1, v3

    .line 155
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getDebug()Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v5, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    goto :goto_4

    .line 162
    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    const/4 v5, 0x0

    .line 163
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 164
    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 165
    iget v5, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_2
    if-ge v3, v5, :cond_6

    .line 166
    aget-object v6, v1, v3

    .line 167
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 168
    :cond_4
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getDebug()Z

    move-result v7

    if-nez v7, :cond_5

    instance-of v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-nez v7, :cond_5

    goto :goto_3

    .line 169
    :cond_5
    iget v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v8, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float v9, v7, v2

    .line 170
    iput v9, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float v9, v8, v4

    .line 171
    iput v9, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 172
    invoke-virtual {v6, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 173
    iput v7, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 174
    iput v8, v6, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 176
    :cond_6
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->x:F

    .line 177
    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->y:F

    .line 179
    :goto_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return-void
.end method

.method public findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 375
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 376
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 377
    :cond_1
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v2, v1, :cond_3

    .line 378
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 379
    instance-of v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v4, :cond_2

    .line 380
    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->findActor(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChild(I)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object p1
.end method

.method public getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getCullingArea()Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 6

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 245
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->tmp:Lcom/badlogic/gdx/math/Vector2;

    .line 246
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 247
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    .line 248
    aget-object v3, v1, v2

    .line 249
    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 250
    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v4, v5, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 253
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    return-object p1
.end method

.method public isTransform()Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    return v0
.end method

.method public localToDescendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .line 442
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_0

    .line 445
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->localToDescendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 447
    :cond_0
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p2

    .line 443
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child is not a descendant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1

    const/4 v0, 0x1

    .line 324
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result p1

    return p1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 331
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return v1
.end method

.method public removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeIndex(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p2, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 344
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    const/4 p2, 0x0

    .line 346
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 347
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 348
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->childrenChanged()V

    return-object p1
.end method

.method protected resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method protected resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->oldTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    return-void
.end method

.method public setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->cullingArea:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public setDebug(ZZ)V
    .locals 3

    .line 453
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(Z)V

    if-eqz p2, :cond_1

    .line 455
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 456
    instance-of v2, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_0

    .line 457
    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 4

    .line 388
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 389
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 390
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 391
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTransform(Z)V
    .locals 0

    .line 432
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->transform:Z

    return-void
.end method

.method public swapActor(II)Z
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_2

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->swap(II)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public swapActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    .line 406
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p2, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result p2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->swap(II)V

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 474
    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toString(Ljava/lang/StringBuilder;I)V

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/StringBuilder;I)V
    .locals 7

    .line 480
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    .line 481
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 484
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_0

    const-string v6, "|  "

    .line 486
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 487
    :cond_0
    aget-object v5, v1, v4

    .line 488
    instance-of v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v6, :cond_1

    .line 489
    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v5, p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->toString(Ljava/lang/StringBuilder;I)V

    goto :goto_2

    .line 491
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 495
    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    return-void
.end method
