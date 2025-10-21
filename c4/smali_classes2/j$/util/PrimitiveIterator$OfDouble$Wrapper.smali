.class public final synthetic Lj$/util/PrimitiveIterator$OfDouble$Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfDouble;


# instance fields
.field final synthetic wrappedValue:Lj$/util/PrimitiveIterator$OfDouble;


# direct methods
.method private synthetic constructor <init>(Lj$/util/PrimitiveIterator$OfDouble;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/PrimitiveIterator$OfDouble$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfDouble;

    return-void
.end method

.method public static synthetic convert(Lj$/util/PrimitiveIterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;
    .locals 1

    new-instance v0, Lj$/util/PrimitiveIterator$OfDouble$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/PrimitiveIterator$OfDouble$Wrapper;-><init>(Lj$/util/PrimitiveIterator$OfDouble;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfDouble$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfDouble;

    check-cast v0, Lj$/util/Spliterators$4Adapter;

    invoke-virtual {v0, p1}, Lj$/util/Spliterators$4Adapter;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfDouble$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfDouble;

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    check-cast v0, Lj$/util/Spliterators$4Adapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lj$/util/Map$-CC;->$default$forEachRemaining(Lj$/util/PrimitiveIterator$OfDouble;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfDouble$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfDouble;

    invoke-static {p1}, Lj$/util/function/DoubleConsumer$VivifiedWrapper;->convert(Ljava/util/function/DoubleConsumer;)Lj$/util/function/DoubleConsumer;

    move-result-object p1

    check-cast v0, Lj$/util/Spliterators$4Adapter;

    invoke-virtual {v0, p1}, Lj$/util/Spliterators$4Adapter;->forEachRemaining(Lj$/util/function/DoubleConsumer;)V

    return-void
.end method

.method public final synthetic hasNext()Z
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfDouble$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfDouble;

    check-cast v0, Lj$/util/Spliterators$4Adapter;

    invoke-virtual {v0}, Lj$/util/Spliterators$4Adapter;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfDouble$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfDouble;

    check-cast v0, Lj$/util/Spliterators$4Adapter;

    invoke-virtual {v0}, Lj$/util/Spliterators$4Adapter;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfDouble$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfDouble;

    check-cast v0, Lj$/util/Spliterators$4Adapter;

    invoke-virtual {v0}, Lj$/util/Spliterators$4Adapter;->next()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic nextDouble()D
    .locals 2

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfDouble$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfDouble;

    check-cast v0, Lj$/util/Spliterators$4Adapter;

    invoke-virtual {v0}, Lj$/util/Spliterators$4Adapter;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic remove()V
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfDouble$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfDouble;

    check-cast v0, Lj$/util/Spliterators$4Adapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lj$/util/Iterator$-CC;->$default$remove()V

    const/4 v0, 0x0

    throw v0
.end method
