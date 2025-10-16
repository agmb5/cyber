.class Lj$/util/stream/Nodes$ToArrayTask$OfRef;
.super Lj$/util/stream/Nodes$ToArrayTask;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field private final array:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/Node$OfPrimitive;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->$r8$classId:I

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Lj$/util/stream/Node;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/Node;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->$r8$classId:I

    invoke-direct {p0, p1}, Lj$/util/stream/Nodes$ToArrayTask;-><init>(Lj$/util/stream/Node;)V

    iput-object p2, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->array:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/Node;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->$r8$classId:I

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Lj$/util/stream/Node;Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/Nodes$ToArrayTask$OfRef;Lj$/util/stream/Node$OfPrimitive;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->$r8$classId:I

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Nodes$ToArrayTask;-><init>(Lj$/util/stream/Nodes$ToArrayTask;Lj$/util/stream/Node;I)V

    iget-object p1, p1, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->array:Ljava/lang/Object;

    iput-object p1, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->array:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/Nodes$ToArrayTask$OfRef;Lj$/util/stream/Node;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->$r8$classId:I

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Nodes$ToArrayTask;-><init>(Lj$/util/stream/Nodes$ToArrayTask;Lj$/util/stream/Node;I)V

    iget-object p1, p1, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->array:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->array:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final copyNodeToArray()V
    .locals 3

    iget v0, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    iget-object v1, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->array:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/Nodes$ToArrayTask;->offset:I

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    return-void

    .line 2
    :goto_0
    iget-object v0, p0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    check-cast v0, Lj$/util/stream/Node$OfPrimitive;

    iget-object v1, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->array:Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/Nodes$ToArrayTask;->offset:I

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Node$OfPrimitive;->copyInto(Ljava/lang/Object;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method final makeChild(II)Lj$/util/stream/Nodes$ToArrayTask;
    .locals 2

    iget v0, p0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance v0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;

    iget-object v1, p0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    invoke-interface {v1, p1}, Lj$/util/stream/Node;->getChild(I)Lj$/util/stream/Node;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Lj$/util/stream/Nodes$ToArrayTask$OfRef;Lj$/util/stream/Node;I)V

    return-object v0

    .line 2
    :goto_0
    new-instance v0, Lj$/util/stream/Nodes$ToArrayTask$OfRef;

    iget-object v1, p0, Lj$/util/stream/Nodes$ToArrayTask;->node:Lj$/util/stream/Node;

    check-cast v1, Lj$/util/stream/Node$OfPrimitive;

    invoke-interface {v1, p1}, Lj$/util/stream/Node$OfPrimitive;->getChild(I)Lj$/util/stream/Node$OfPrimitive;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/Nodes$ToArrayTask$OfRef;-><init>(Lj$/util/stream/Nodes$ToArrayTask$OfRef;Lj$/util/stream/Node$OfPrimitive;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
