.class public Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;
.super Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;
.source "ObjectLongMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;
.implements Lj$/lang/Iterable;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectLongMap;
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
        "Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
        "TK;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
        "TK;>;>;",
        "Lj$/lang/Iterable;",
        "Lj$/util/Iterator;"
    }
.end annotation


# instance fields
.field entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "TK;>;)V"
        }
    .end annotation

    .line 517
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    .line 514
    new-instance p1, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->forEach(Lj$/util/function/Consumer;)V

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->forEachRemaining(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 533
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    .line 534
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->hasNext:Z

    return v0

    .line 533
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 522
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->hasNext:Z

    if-eqz v0, :cond_1

    .line 523
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    .line 525
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->nextIndex:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->key:Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->nextIndex:I

    aget-wide v2, v1, v2

    iput-wide v2, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->value:J

    .line 527
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->nextIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->currentIndex:I

    .line 528
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->findNextIndex()V

    .line 529
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    return-object v0

    .line 523
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 513
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->next()Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .line 513
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .line 513
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->reset()V

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

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
