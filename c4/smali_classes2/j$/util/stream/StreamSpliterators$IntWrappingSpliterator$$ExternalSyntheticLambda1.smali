.class public final synthetic Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Sink$OfInt;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(D)V
    .locals 0

    iget p1, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept()V

    throw p2

    .line 2
    :goto_0
    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept()V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final accept(I)V
    .locals 1

    iget v0, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/function/IntConsumer;

    invoke-interface {v0, p1}, Lj$/util/function/IntConsumer;->accept(I)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Lj$/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic accept(J)V
    .locals 0

    iget p1, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$2()V

    throw p2

    .line 6
    :goto_0
    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$2()V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic accept(Ljava/lang/Integer;)V
    .locals 1

    iget v0, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void

    .line 8
    :goto_0
    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lj$/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9
    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Object;)V

    return-void

    .line 10
    :goto_0
    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic begin(J)V
    .locals 0

    return-void
.end method

.method public final synthetic cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic end()V
    .locals 0

    return-void
.end method
