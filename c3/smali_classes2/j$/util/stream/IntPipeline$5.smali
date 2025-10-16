.class final Lj$/util/stream/IntPipeline$5;
.super Lj$/util/stream/LongPipeline$StatelessOp;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field final synthetic val$mapper:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lj$/util/stream/IntPipeline$5;->$r8$classId:I

    iput-object p4, p0, Lj$/util/stream/IntPipeline$5;->val$mapper:Ljava/lang/Object;

    invoke-direct {p0, p1, p3}, Lj$/util/stream/LongPipeline$StatelessOp;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    return-void
.end method


# virtual methods
.method final opWrapSink(ILj$/util/stream/Sink;)Lj$/util/stream/Sink;
    .locals 1

    iget p1, p0, Lj$/util/stream/IntPipeline$5;->$r8$classId:I

    const/4 v0, 0x5

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance p1, Lj$/util/stream/DistinctOps$1$2;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/DistinctOps$1$2;-><init>(Lj$/util/stream/IntPipeline$5;Lj$/util/stream/Sink;)V

    return-object p1

    .line 2
    :pswitch_1
    new-instance p1, Lj$/util/stream/LongPipeline$1$1;

    const/4 v0, 0x7

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/LongPipeline$1$1;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/Sink;I)V

    return-object p1

    .line 3
    :pswitch_2
    new-instance p1, Lj$/util/stream/LongPipeline$1$1;

    const/4 v0, 0x6

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/LongPipeline$1$1;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/Sink;I)V

    return-object p1

    .line 4
    :pswitch_3
    new-instance p1, Lj$/util/stream/LongPipeline$1$1;

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/LongPipeline$1$1;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/Sink;I)V

    return-object p1

    .line 5
    :pswitch_4
    new-instance p1, Lj$/util/stream/LongPipeline$1$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/LongPipeline$1$1;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/Sink;I)V

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lj$/util/stream/DoublePipeline$1$1;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/DoublePipeline$1$1;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/Sink;I)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lj$/util/stream/IntPipeline$1$1;

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/IntPipeline$1$1;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/Sink;I)V

    return-object p1

    .line 8
    :goto_0
    new-instance p1, Lj$/util/stream/ReferencePipeline$2$1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/ReferencePipeline$2$1;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/Sink;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
