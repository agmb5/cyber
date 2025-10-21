.class public Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
.super Ljava/lang/Object;
.source "ObjectSet.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;
.implements Lj$/lang/Iterable;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectSetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TK;>;",
        "Ljava/util/Iterator<",
        "TK;>;",
        "Lj$/lang/Iterable;",
        "Lj$/util/Iterator;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field nextIndex:I

.field final set:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TK;>;)V"
        }
    .end annotation

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 369
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    .line 370
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->reset()V

    return-void
.end method

.method private findNextIndex()V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 381
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    array-length v1, v1

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 382
    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 383
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->forEach(Lj$/util/function/Consumer;)V

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->forEachRemaining(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 411
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    if-eqz v0, :cond_0

    .line 412
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    return v0

    .line 411
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 416
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    if-eqz v0, :cond_1

    .line 417
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    aget-object v0, v0, v1

    .line 419
    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    .line 420
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->findNextIndex()V

    return-object v0

    .line 417
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 7

    .line 391
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    if-ltz v0, :cond_3

    .line 393
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 394
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    add-int/lit8 v3, v0, 0x1

    :goto_0
    and-int/2addr v3, v2

    .line 396
    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    .line 397
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectSet;->place(Ljava/lang/Object;)I

    move-result v5

    sub-int v6, v3, v5

    and-int/2addr v6, v2

    sub-int v5, v0, v5

    and-int/2addr v5, v2

    if-le v6, v5, :cond_0

    .line 399
    aput-object v4, v1, v0

    move v0, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 404
    aput-object v2, v1, v0

    .line 405
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v2, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 406
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    :cond_2
    const/4 v0, -0x1

    .line 407
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    return-void

    .line 392
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x1

    .line 374
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->currentIndex:I

    .line 375
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->nextIndex:I

    .line 376
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->findNextIndex()V

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

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    .line 437
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->set:Lcom/badlogic/gdx/utils/ObjectSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "TK;>;"
        }
    .end annotation

    .line 430
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->hasNext:Z

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method
