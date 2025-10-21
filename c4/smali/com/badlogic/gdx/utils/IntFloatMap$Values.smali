.class public Lcom/badlogic/gdx/utils/IntFloatMap$Values;
.super Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;
.source "IntFloatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntFloatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Values"
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 0

    .line 634
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 638
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    if-eqz v0, :cond_0

    .line 639
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->hasNext:Z

    return v0

    .line 638
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/IntFloatMap$Values;
    .locals 0

    return-object p0
.end method

.method public next()F
    .locals 2

    .line 643
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->hasNext:Z

    if-eqz v0, :cond_1

    .line 644
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->nextIndex:I

    aget v0, v0, v1

    .line 646
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->currentIndex:I

    .line 647
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->findNextIndex()V

    return v0

    .line 644
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 632
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 632
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/FloatArray;
    .locals 3

    .line 657
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(ZI)V

    .line 658
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->hasNext:Z

    if-eqz v1, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->next()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/FloatArray;)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 1

    .line 665
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->hasNext:Z

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->next()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_0

    :cond_0
    return-object p1
.end method
