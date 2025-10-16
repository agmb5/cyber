.class public Lcom/badlogic/gdx/utils/IntIntMap$Entries;
.super Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;
.source "IntIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;
.implements Lj$/lang/Iterable;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntIntMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
        ">;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
        ">;",
        "Lj$/lang/Iterable;",
        "Lj$/util/Iterator;"
    }
.end annotation


# instance fields
.field private final entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .locals 0

    .line 572
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    .line 569
    new-instance p1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/IntIntMap$Entry;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    return-void
.end method


# virtual methods
.method public synthetic forEach(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/lang/Iterable$-CC;->$default$forEach(Ljava/lang/Iterable;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->forEach(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->forEachRemaining(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 593
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    .line 594
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->hasNext:Z

    return v0

    .line 593
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    .locals 3

    .line 577
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->hasNext:Z

    if-eqz v0, :cond_2

    .line 578
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 580
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 581
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    iput v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    goto :goto_0

    .line 584
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->nextIndex:I

    aget v0, v0, v2

    iput v0, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    .line 585
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->map:Lcom/badlogic/gdx/utils/IntIntMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->nextIndex:I

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    .line 587
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->nextIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->currentIndex:I

    .line 588
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->findNextIndex()V

    .line 589
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    return-object v0

    .line 578
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 568
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->next()Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 568
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 568
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;->reset()V

    return-void
.end method

.method public synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-static {p0}, Lj$/lang/Iterable$-CC;->$default$spliterator(Ljava/lang/Iterable;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
