.class public final synthetic Lj$/util/PrimitiveIterator$OfInt$Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfInt;


# instance fields
.field final synthetic wrappedValue:Lj$/util/PrimitiveIterator$OfInt;


# direct methods
.method private synthetic constructor <init>(Lj$/util/PrimitiveIterator$OfInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfInt;

    return-void
.end method

.method public static synthetic convert(Lj$/util/PrimitiveIterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;
    .locals 1

    new-instance v0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/PrimitiveIterator$OfInt$Wrapper;-><init>(Lj$/util/PrimitiveIterator$OfInt;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfInt;

    check-cast v0, Lj$/util/Spliterators$2Adapter;

    invoke-virtual {v0, p1}, Lj$/util/Spliterators$2Adapter;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfInt;

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    check-cast v0, Lj$/util/Spliterators$2Adapter;

    invoke-virtual {v0, p1}, Lj$/util/Spliterators$2Adapter;->forEachRemaining(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfInt;

    invoke-static {p1}, Lj$/util/function/IntConsumer$VivifiedWrapper;->convert(Ljava/util/function/IntConsumer;)Lj$/util/function/IntConsumer;

    move-result-object p1

    check-cast v0, Lj$/util/Spliterators$2Adapter;

    invoke-virtual {v0, p1}, Lj$/util/Spliterators$2Adapter;->forEachRemaining(Lj$/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic hasNext()Z
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfInt;

    check-cast v0, Lj$/util/Spliterators$2Adapter;

    invoke-virtual {v0}, Lj$/util/Spliterators$2Adapter;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfInt;

    check-cast v0, Lj$/util/Spliterators$2Adapter;

    invoke-virtual {v0}, Lj$/util/Spliterators$2Adapter;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfInt;

    check-cast v0, Lj$/util/Spliterators$2Adapter;

    invoke-virtual {v0}, Lj$/util/Spliterators$2Adapter;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic nextInt()I
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfInt;

    check-cast v0, Lj$/util/Spliterators$2Adapter;

    invoke-virtual {v0}, Lj$/util/Spliterators$2Adapter;->nextInt()I

    move-result v0

    return v0
.end method

.method public final synthetic remove()V
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfInt$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfInt;

    check-cast v0, Lj$/util/Spliterators$2Adapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lj$/util/Iterator$-CC;->$default$remove()V

    const/4 v0, 0x0

    throw v0
.end method
