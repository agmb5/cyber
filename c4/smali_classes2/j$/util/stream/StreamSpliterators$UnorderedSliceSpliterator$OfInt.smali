.class final Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;
.super Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator$OfInt;
.implements Lj$/util/function/IntConsumer;


# instance fields
.field tmpValue:I


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfInt;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iput p1, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->tmpValue:I

    return-void
.end method

.method protected final acceptConsumed(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lj$/util/function/IntConsumer;

    iget v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->tmpValue:I

    invoke-interface {p1, v0}, Lj$/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method protected final bufferCreate()Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .locals 1

    new-instance v0, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;

    invoke-direct {v0}, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfInt;-><init>()V

    return-object v0
.end method

.method public final synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)V

    return-void
.end method

.method protected final makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    check-cast p1, Lj$/util/Spliterator$OfInt;

    new-instance v0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;-><init>(Lj$/util/Spliterator$OfInt;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;)V

    return-object v0
.end method

.method public final synthetic tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfInt;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
