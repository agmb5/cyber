.class public Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;
.super Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;
.source "ObjectFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;
.implements Lj$/lang/Iterable;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectFloatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
        "TK;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
        "TK;>;>;",
        "Lj$/lang/Iterable;",
        "Lj$/util/Iterator;"
    }
.end annotation


# instance fields
.field entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 542
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectFloatMap;)V

    .line 539
    new-instance p1, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->forEach(Lj$/util/function/Consumer;)V

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->forEachRemaining(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 558
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    .line 559
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->hasNext:Z

    return v0

    .line 558
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 547
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->hasNext:Z

    if-eqz v0, :cond_1

    .line 548
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap;->keyTable:[Ljava/lang/Object;

    .line 550
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->nextIndex:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;->key:Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectFloatMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectFloatMap;->valueTable:[F

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->nextIndex:I

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;->value:F

    .line 552
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->nextIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->currentIndex:I

    .line 553
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->findNextIndex()V

    .line 554
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    return-object v0

    .line 548
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->next()Lcom/badlogic/gdx/utils/ObjectFloatMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 538
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 538
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$MapIterator;->reset()V

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

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectFloatMap$Entries;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
