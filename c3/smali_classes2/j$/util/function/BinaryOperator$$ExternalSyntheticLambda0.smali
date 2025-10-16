.class public final synthetic Lj$/util/function/BinaryOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/BinaryOperator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;I)V
    .locals 0

    iput p2, p0, Lj$/util/function/BinaryOperator$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lj$/util/function/BinaryOperator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj$/util/function/BinaryOperator$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lj$/util/function/BinaryOperator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Comparator;

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1

    .line 3
    :goto_1
    iget-object v0, p0, Lj$/util/function/BinaryOperator$$ExternalSyntheticLambda0;->f$0:Ljava/util/Comparator;

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_2

    :cond_1
    move-object p1, p2

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
