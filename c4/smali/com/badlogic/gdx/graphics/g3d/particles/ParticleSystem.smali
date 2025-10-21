.class public final Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;
.super Ljava/lang/Object;
.source "ParticleSystem.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/RenderableProvider;


# static fields
.field private static instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;


# instance fields
.field private batches:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<",
            "*>;>;"
        }
    .end annotation
.end field

.field private effects:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public static get()Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    .line 35
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->instance:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public add(Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<",
            "*>;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public begin()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 92
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->begin()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 98
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->draw()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public end()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 105
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->end()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBatches()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch<",
            "*>;>;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;",
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/graphics/g3d/Renderable;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->batches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;

    .line 111
    invoke-interface {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/batches/ParticleBatch;->getRenderables(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Pool;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    return-void
.end method

.method public removeAll()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method

.method public update()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 66
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 79
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateAndDraw()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 72
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update()V

    .line 73
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->draw()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateAndDraw(F)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleSystem;->effects:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;

    .line 84
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->update(F)V

    .line 85
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleEffect;->draw()V

    goto :goto_0

    :cond_0
    return-void
.end method
