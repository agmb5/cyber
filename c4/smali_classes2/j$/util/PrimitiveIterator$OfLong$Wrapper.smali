.class public final synthetic Lj$/util/PrimitiveIterator$OfLong$Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/PrimitiveIterator$OfLong;


# instance fields
.field final synthetic wrappedValue:Lj$/util/PrimitiveIterator$OfLong;


# direct methods
.method private synthetic constructor <init>(Lj$/util/PrimitiveIterator$OfLong;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/PrimitiveIterator$OfLong$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfLong;

    return-void
.end method

.method public static synthetic convert(Lj$/util/PrimitiveIterator$OfLong;)Ljava/util/PrimitiveIterator$OfLong;
    .locals 1

    new-instance v0, Lj$/util/PrimitiveIterator$OfLong$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/PrimitiveIterator$OfLong$Wrapper;-><init>(Lj$/util/PrimitiveIterator$OfLong;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfLong$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfLong;

    check-cast v0, Lj$/util/Spliterators$3Adapter;

    invoke-virtual {v0, p1}, Lj$/util/Spliterators$3Adapter;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfLong$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfLong;

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    check-cast v0, Lj$/util/Spliterators$3Adapter;

    invoke-virtual {v0, p1}, Lj$/util/Spliterators$3Adapter;->forEachRemaining(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfLong$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfLong;

    invoke-static {p1}, Lj$/util/function/LongConsumer$VivifiedWrapper;->convert(Ljava/util/function/LongConsumer;)Lj$/util/function/LongConsumer;

    move-result-object p1

    check-cast v0, Lj$/util/Spliterators$3Adapter;

    invoke-virtual {v0, p1}, Lj$/util/Spliterators$3Adapter;->forEachRemaining(Lj$/util/function/LongConsumer;)V

    return-void
.end method

.method public final synthetic hasNext()Z
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfLong$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfLong;

    check-cast v0, Lj$/util/Spliterators$3Adapter;

    invoke-virtual {v0}, Lj$/util/Spliterators$3Adapter;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfLong$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfLong;

    check-cast v0, Lj$/util/Spliterators$3Adapter;

    invoke-virtual {v0}, Lj$/util/Spliterators$3Adapter;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfLong$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfLong;

    check-cast v0, Lj$/util/Spliterators$3Adapter;

    invoke-virtual {v0}, Lj$/util/Spliterators$3Adapter;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic nextLong()J
    .locals 2

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfLong$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfLong;

    check-cast v0, Lj$/util/Spliterators$3Adapter;

    invoke-virtual {v0}, Lj$/util/Spliterators$3Adapter;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic remove()V
    .locals 1

    iget-object v0, p0, Lj$/util/PrimitiveIterator$OfLong$Wrapper;->wrappedValue:Lj$/util/PrimitiveIterator$OfLong;

    check-cast v0, Lj$/util/Spliterators$3Adapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lj$/util/Iterator$-CC;->$default$remove()V

    const/4 v0, 0x0

    throw v0
.end method
