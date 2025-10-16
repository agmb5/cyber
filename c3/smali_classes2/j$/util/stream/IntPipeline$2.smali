.class final Lj$/util/stream/IntPipeline$2;
.super Lj$/util/stream/DoublePipeline$StatelessOp;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/AbstractPipeline;III)V
    .locals 0

    iput p4, p0, Lj$/util/stream/IntPipeline$2;->$r8$classId:I

    invoke-direct {p0, p1, p3}, Lj$/util/stream/DoublePipeline$StatelessOp;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    return-void
.end method


# virtual methods
.method final opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 1

    iget p1, p0, Lj$/util/stream/IntPipeline$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-object p2

    .line 1
    :pswitch_1
    new-instance p1, Lj$/util/stream/IntPipeline$1$1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/IntPipeline$1$1;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/Sink;I)V

    return-object p1

    .line 2
    :goto_0
    new-instance p1, Lj$/util/stream/LongPipeline$1$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/LongPipeline$1$1;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/Sink;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
