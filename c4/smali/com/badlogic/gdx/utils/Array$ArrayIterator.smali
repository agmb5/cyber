.class public Lcom/badlogic/gdx/utils/Array$ArrayIterator;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;
.implements Lj$/lang/Iterable;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lj$/lang/Iterable;",
        "Lj$/util/Iterator;"
    }
.end annotation


# instance fields
.field private final allowRemove:Z

.field private final array:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field index:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 627
    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;-><init>(Lcom/badlogic/gdx/utils/Array;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 622
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    .line 631
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    .line 632
    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->allowRemove:Z

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->forEach(Lj$/util/function/Consumer;)V

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

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->forEachRemaining(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 636
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    if-eqz v0, :cond_1

    .line 640
    iget v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 638
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array$ArrayIterator<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 618
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 644
    iget v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    .line 645
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->valid:Z

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 647
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 653
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->allowRemove:Z

    if-eqz v0, :cond_0

    .line 654
    iget v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

    .line 655
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    return-void

    .line 653
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Remove not allowed."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 659
    iput v0, p0, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->index:I

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

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array$ArrayIterator;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
