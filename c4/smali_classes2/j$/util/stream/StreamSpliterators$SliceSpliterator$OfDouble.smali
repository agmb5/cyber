.class final Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;
.super Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.source "SourceFile"

# interfaces
.implements Lj$/util/Spliterator$OfDouble;


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfDouble;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator$OfDouble;JJJJ)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;JJJJLj$/util/stream/Node$-CC;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic emptyConsumer()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble$$ExternalSyntheticLambda0;->INSTANCE:Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble$$ExternalSyntheticLambda0;

    return-object v0
.end method

.method public final synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$forEachRemaining(Lj$/util/Spliterator$OfDouble;Lj$/util/function/Consumer;)V

    return-void
.end method

.method protected final makeSpliterator(Lj$/util/Spliterator;JJJJ)Lj$/util/Spliterator;
    .locals 11

    move-object v1, p1

    check-cast v1, Lj$/util/Spliterator$OfDouble;

    new-instance v10, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v0, v10

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Lj$/util/Spliterator$OfDouble;JJJJ)V

    return-object v10
.end method

.method public final synthetic tryAdvance(Lj$/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Map$-CC;->$default$tryAdvance(Lj$/util/Spliterator$OfDouble;Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
