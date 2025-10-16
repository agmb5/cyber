.class public Ljwtc/chess/Valuation;
.super Ljava/lang/Object;
.source "Valuation.java"


# static fields
.field public static BISHOP_MOVE:I = 0x0

.field public static CASTLED_KING_POS:I = 0x0

.field public static final CENTER_4x4_SQUARES:J = 0x3c3c3c3c0000L

.field public static CENTER_KNIGHT:I = 0x0

.field public static final CENTER_SQUARES:J = 0x3c7e7e3c0000L

.field public static DEVELOPED_KNIGHT:I = 0x0

.field public static DOUBLED_PAWN:I = 0x0

.field public static final DRAW:I = 0x0

.field public static DRAW_REPEAT:I = -0xa

.field public static EARLY_QUEEN:I = 0x0

.field public static final KBNK_SCORE:[[I

.field public static KILLER_MOVE_SCORE:I = 0x0

.field public static final KING_ENDINGS:[I

.field public static LONE_KING:I = 0x0

.field public static LONE_KING_BONUS:I = 0x0

.field public static final MATE:I = 0x2710

.field public static MPD:I

.field public static PASSED_PAWN:I

.field public static PIECES:[I

.field public static ROOK_MOVE:I

.field public static ROOK_OPEN_FILE:I

.field public static ROOK_RANK_7:I

.field public static TRANSPOSITION_MOVE_SCORE:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 47
    fill-array-data v1, :array_0

    sput-object v1, Ljwtc/chess/Valuation;->PIECES:[I

    const/16 v1, 0x7d0

    .line 49
    sput v1, Ljwtc/chess/Valuation;->TRANSPOSITION_MOVE_SCORE:I

    const/16 v1, 0x5dc

    .line 50
    sput v1, Ljwtc/chess/Valuation;->KILLER_MOVE_SCORE:I

    .line 53
    sput v0, Ljwtc/chess/Valuation;->LONE_KING:I

    const/16 v0, 0x96

    .line 54
    sput v0, Ljwtc/chess/Valuation;->LONE_KING_BONUS:I

    const/16 v0, 0x40

    new-array v1, v0, [I

    .line 76
    fill-array-data v1, :array_1

    sput-object v1, Ljwtc/chess/Valuation;->KING_ENDINGS:[I

    const/4 v1, 0x2

    new-array v1, v1, [[I

    new-array v2, v0, [I

    .line 88
    fill-array-data v2, :array_2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ljwtc/chess/Valuation;->KBNK_SCORE:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x64
        0x12c
        0x131
        0x258
        0x3e8
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x6
        0xc
        0x12
        0x12
        0xc
        0x6
        0x0
        0x6
        0xc
        0x12
        0x18
        0x18
        0x12
        0xc
        0x6
        0xc
        0x12
        0x18
        0x20
        0x20
        0x18
        0x12
        0xc
        0x12
        0x18
        0x20
        0x30
        0x30
        0x20
        0x18
        0x12
        0x12
        0x18
        0x20
        0x30
        0x30
        0x20
        0x18
        0x12
        0xc
        0x12
        0x18
        0x20
        0x20
        0x18
        0x12
        0xc
        0x6
        0xc
        0x12
        0x18
        0x18
        0x12
        0xc
        0x6
        0x0
        0x6
        0xc
        0x12
        0x12
        0xc
        0x6
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x3c
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x3c
        0x32
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x3c
        0x32
        0x28
        0x28
        0x32
        0x3c
        0x46
        0x3c
        0x32
        0x28
        0x1e
        0x32
        0x3c
        0x46
        0x3c
        0x32
        0x28
        0x1e
        0x14
        0x3c
        0x46
        0x3c
        0x32
        0x28
        0x1e
        0x14
        0xa
        0x46
        0x3c
        0x32
        0x28
        0x1e
        0x14
        0xa
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x46
        0x3c
        0x32
        0x28
        0x1e
        0x14
        0xa
        0x0
        0x3c
        0x46
        0x3c
        0x32
        0x28
        0x1e
        0x14
        0xa
        0x32
        0x3c
        0x46
        0x3c
        0x32
        0x28
        0x1e
        0x14
        0x28
        0x32
        0x3c
        0x46
        0x3c
        0x32
        0x28
        0x1e
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x3c
        0x32
        0x28
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x3c
        0x32
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x3c
        0x0
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x46

    .line 7
    sput v0, Ljwtc/chess/Valuation;->MPD:I

    const/16 v0, 0xa

    .line 9
    sput v0, Ljwtc/chess/Valuation;->DOUBLED_PAWN:I

    .line 10
    sput v0, Ljwtc/chess/Valuation;->PASSED_PAWN:I

    .line 11
    sput v0, Ljwtc/chess/Valuation;->CASTLED_KING_POS:I

    const/16 v1, 0x1e

    .line 12
    sput v1, Ljwtc/chess/Valuation;->EARLY_QUEEN:I

    const/4 v1, 0x5

    .line 13
    sput v1, Ljwtc/chess/Valuation;->CENTER_KNIGHT:I

    const/4 v1, 0x2

    .line 14
    sput v1, Ljwtc/chess/Valuation;->DEVELOPED_KNIGHT:I

    .line 15
    sput v1, Ljwtc/chess/Valuation;->BISHOP_MOVE:I

    .line 16
    sput v1, Ljwtc/chess/Valuation;->ROOK_MOVE:I

    .line 17
    sput v0, Ljwtc/chess/Valuation;->ROOK_RANK_7:I

    .line 18
    sput v0, Ljwtc/chess/Valuation;->ROOK_OPEN_FILE:I

    return-void
.end method


# virtual methods
.method public setWeights4Test()V
    .locals 2

    const/16 v0, 0x96

    .line 22
    sput v0, Ljwtc/chess/Valuation;->MPD:I

    const/16 v0, 0x1e

    .line 24
    sput v0, Ljwtc/chess/Valuation;->DOUBLED_PAWN:I

    .line 25
    sput v0, Ljwtc/chess/Valuation;->PASSED_PAWN:I

    .line 26
    sput v0, Ljwtc/chess/Valuation;->CASTLED_KING_POS:I

    const/16 v1, 0x5a

    .line 27
    sput v1, Ljwtc/chess/Valuation;->EARLY_QUEEN:I

    const/16 v1, 0xf

    .line 28
    sput v1, Ljwtc/chess/Valuation;->CENTER_KNIGHT:I

    const/4 v1, 0x6

    .line 29
    sput v1, Ljwtc/chess/Valuation;->DEVELOPED_KNIGHT:I

    .line 30
    sput v1, Ljwtc/chess/Valuation;->BISHOP_MOVE:I

    .line 31
    sput v1, Ljwtc/chess/Valuation;->ROOK_MOVE:I

    .line 32
    sput v0, Ljwtc/chess/Valuation;->ROOK_RANK_7:I

    .line 33
    sput v0, Ljwtc/chess/Valuation;->ROOK_OPEN_FILE:I

    return-void
.end method
