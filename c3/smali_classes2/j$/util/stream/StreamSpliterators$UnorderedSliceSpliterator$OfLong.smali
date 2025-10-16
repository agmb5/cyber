.class final Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;
.super Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator$OfLong;
.implements Lj$/util/function/LongConsumer;


# instance fields
.field tmpValue:J


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfLong;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfLong;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 0

    iput-wide p1, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->tmpValue:J

    return-void
.end method

.method protected final acceptConsumed(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lj$/util/function/LongConsumer;

    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->tmpValue:J

    invoke-interface {p1, v0, v1}, Lj$/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method protected final bufferCreate()Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .locals 1

    new-instance v0, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfLong;

    invoke-direct {v0}, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfLong;-><init>()V

    return-object v0
.end method

.method public final synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfLong;Lj$/util/function/Consumer;)V

    return-void
.end method

.method protected final makeSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 1

    check-cast p1, Lj$/util/Spliterator$OfLong;

    new-instance v0, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;

    invoke-direct {v0, p1, p0}, Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;-><init>(Lj$/util/Spliterator$OfLong;Lj$/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;)V

    return-object v0
.end method

.method public final synthetic tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfLong;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
