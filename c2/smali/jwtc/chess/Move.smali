.class public Ljwtc/chess/Move;
.super Ljava/lang/Object;
.source "Move.java"


# static fields
.field private static final MASK_BOOL:I = 0x1

.field private static final MASK_POS:I = 0x3f

.field private static final SHIFT_CHECK:I = 0x12

.field private static final SHIFT_EP:I = 0xd

.field private static final SHIFT_FIRSTPAWN:I = 0x11

.field private static final SHIFT_HIT:I = 0x10

.field private static final SHIFT_OO:I = 0xe

.field private static final SHIFT_OOO:I = 0xf

.field private static final SHIFT_PROMOTION:I = 0x13

.field private static final SHIFT_PROMOTIONPIECE:I = 0x14

.field private static final SHIFT_TO:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final equalPositions(II)Z
    .locals 2

    and-int/lit8 v0, p0, 0x3f

    and-int/lit8 v1, p1, 0x3f

    if-ne v0, v1, :cond_0

    shr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, 0x3f

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final equalTos(II)Z
    .locals 0

    shr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    shr-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, 0x3f

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getFrom(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method public static final getPromotionPiece(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static final getTo(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method public static final isCheck(I)Z
    .locals 1

    shr-int/lit8 p0, p0, 0x12

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isEP(I)Z
    .locals 1

    shr-int/lit8 p0, p0, 0xd

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isFirstPawnMove(I)Z
    .locals 1

    shr-int/lit8 p0, p0, 0x11

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isHIT(I)Z
    .locals 1

    shr-int/lit8 p0, p0, 0x10

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isOO(I)Z
    .locals 1

    shr-int/lit8 p0, p0, 0xe

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isOOO(I)Z
    .locals 1

    shr-int/lit8 p0, p0, 0xf

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isPromotionMove(I)Z
    .locals 1

    shr-int/lit8 p0, p0, 0x13

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final makeMove(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    return p0
.end method

.method public static final makeMoveEP(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    const/high16 p1, 0x10000

    or-int/2addr p0, p1

    or-int/lit16 p0, p0, 0x2000

    return p0
.end method

.method public static final makeMoveFirstPawn(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    const/high16 p1, 0x20000

    or-int/2addr p0, p1

    return p0
.end method

.method public static final makeMoveHit(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    const/high16 p1, 0x10000

    or-int/2addr p0, p1

    return p0
.end method

.method public static final makeMoveOO(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    or-int/lit16 p0, p0, 0x4000

    return p0
.end method

.method public static final makeMoveOOO(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    const p1, 0x8000

    or-int/2addr p0, p1

    return p0
.end method

.method public static final makeMovePromotion(IIIZ)I
    .locals 0

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    const/high16 p1, 0x80000

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x14

    or-int/2addr p0, p1

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    const/high16 p1, 0x10000

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p0, p1

    return p0
.end method

.method public static final setCheck(I)I
    .locals 1

    const/high16 v0, 0x40000

    or-int/2addr p0, v0

    return p0
.end method

.method public static final toDbgString(I)Ljava/lang/String;
    .locals 3

    .line 119
    invoke-static {p0}, Ljwtc/chess/Move;->isOO(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "O-O"

    return-object p0

    .line 121
    :cond_0
    invoke-static {p0}, Ljwtc/chess/Move;->isOOO(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "O-O-O"

    return-object p0

    .line 123
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljwtc/chess/Move;->getFrom(I)I

    move-result v1

    invoke-static {v1}, Ljwtc/chess/Pos;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljwtc/chess/Move;->isHIT(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "x"

    goto :goto_0

    :cond_2
    const-string v1, "-"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljwtc/chess/Move;->getTo(I)I

    move-result v1

    invoke-static {v1}, Ljwtc/chess/Pos;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljwtc/chess/Move;->isCheck(I)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_3

    const-string v1, "+"

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljwtc/chess/Move;->isEP(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string v2, " ep"

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
