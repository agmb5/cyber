.class abstract Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;
.super Ljava/lang/Object;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;
.implements Lj$/lang/Iterable;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TI;>;",
        "Ljava/util/Iterator<",
        "TI;>;",
        "Lj$/lang/Iterable;",
        "Lj$/util/Iterator;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 490
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->valid:Z

    .line 493
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 494
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 4

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 505
    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 506
    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 507
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 511
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->hasNext:Z

    return-void
.end method

.method public synthetic forEach(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/lang/Iterable$-CC;->$default$forEach(Ljava/lang/Iterable;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->forEach(Lj$/util/function/Consumer;)V

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->forEachRemaining(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public remove()V
    .locals 8

    .line 515
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    if-ltz v0, :cond_3

    .line 517
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 518
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 519
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v3, v3, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    add-int/lit8 v4, v0, 0x1

    :goto_0
    and-int/2addr v4, v3

    .line 521
    aget-object v5, v1, v4

    if-eqz v5, :cond_1

    .line 522
    iget-object v6, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->place(Ljava/lang/Object;)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v3

    sub-int v6, v0, v6

    and-int/2addr v6, v3

    if-le v7, v6, :cond_0

    .line 524
    aput-object v5, v1, v0

    .line 525
    aget-object v5, v2, v4

    aput-object v5, v2, v0

    move v0, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 530
    aput-object v3, v1, v0

    .line 531
    aput-object v3, v2, v0

    .line 532
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v2, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 533
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    :cond_2
    const/4 v0, -0x1

    .line 534
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    return-void

    .line 516
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

    .line 498
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->currentIndex:I

    .line 499
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->nextIndex:I

    .line 500
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->findNextIndex()V

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

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
