.class public Ljwtc/chess/board/BoardConstants;
.super Ljava/lang/Object;
.source "BoardConstants.java"


# static fields
.field public static final BISHOP:I = 0x2

.field public static final BLACK:I = 0x0

.field public static final BLACK_FORFEIT_TIME:I = 0xa

.field public static final BLACK_RESIGNED:I = 0xc

.field public static final CHECK:I = 0x2

.field public static final COL:[I

.field public static final DRAW_50:I = 0x5

.field public static final DRAW_AGREEMENT:I = 0xd

.field public static final DRAW_MATERIAL:I = 0x4

.field public static final DRAW_REPEAT:I = 0x8

.field public static final FIELD:I = -0x1

.field public static final FILE_BITS:[J

.field public static final INVALID:I = 0x3

.field public static final KING:I = 0x5

.field public static final KNIGHT:I = 0x1

.field public static final MATE:I = 0x6

.field public static final MAX_MOVES:I = 0xff

.field public static final NUM_FIELDS:I = 0x40

.field public static final NUM_PIECES:I = 0x6

.field public static final PAWN:I = 0x0

.field public static final PLAY:I = 0x1

.field public static final QUEEN:I = 0x4

.field public static final ROOK:I = 0x3

.field public static final ROW:[I

.field public static final ROW_BITS:[J

.field public static final ROW_TURN:[[I

.field public static final STALEMATE:I = 0x7

.field public static final WHITE:I = 0x1

.field public static final WHITE_FORFEIT_TIME:I = 0x9

.field public static final WHITE_RESIGNED:I = 0xb

.field public static final a1:I = 0x38

.field public static final a2:I = 0x30

.field public static final a3:I = 0x28

.field public static final a4:I = 0x20

.field public static final a5:I = 0x18

.field public static final a6:I = 0x10

.field public static final a7:I = 0x8

.field public static final a8:I = 0x0

.field public static final b1:I = 0x39

.field public static final b2:I = 0x31

.field public static final b3:I = 0x29

.field public static final b4:I = 0x21

.field public static final b5:I = 0x19

.field public static final b6:I = 0x11

.field public static final b7:I = 0x9

.field public static final b8:I = 0x1

.field public static final c1:I = 0x3a

.field public static final c2:I = 0x32

.field public static final c3:I = 0x2a

.field public static final c4:I = 0x22

.field public static final c5:I = 0x1a

.field public static final c6:I = 0x12

.field public static final c7:I = 0xa

.field public static final c8:I = 0x2

.field public static final d1:I = 0x3b

.field public static final d2:I = 0x33

.field public static final d3:I = 0x2b

.field public static final d4:I = 0x23

.field public static final d5:I = 0x1b

.field public static final d6:I = 0x13

.field public static final d7:I = 0xb

.field public static final d8:I = 0x3

.field public static final e1:I = 0x3c

.field public static final e2:I = 0x34

.field public static final e3:I = 0x2c

.field public static final e4:I = 0x24

.field public static final e5:I = 0x1c

.field public static final e6:I = 0x14

.field public static final e7:I = 0xc

.field public static final e8:I = 0x4

.field public static final f1:I = 0x3d

.field public static final f2:I = 0x35

.field public static final f3:I = 0x2d

.field public static final f4:I = 0x25

.field public static final f5:I = 0x1d

.field public static final f6:I = 0x15

.field public static final f7:I = 0xd

.field public static final f8:I = 0x5

.field public static final g1:I = 0x3e

.field public static final g2:I = 0x36

.field public static final g3:I = 0x2e

.field public static final g4:I = 0x26

.field public static final g5:I = 0x1e

.field public static final g6:I = 0x16

.field public static final g7:I = 0xe

.field public static final g8:I = 0x6

.field public static final h1:I = 0x3f

.field public static final h2:I = 0x37

.field public static final h3:I = 0x2f

.field public static final h4:I = 0x27

.field public static final h5:I = 0x1f

.field public static final h6:I = 0x17

.field public static final h7:I = 0xf

.field public static final h8:I = 0x7

.field public static m_valuation:Ljwtc/chess/Valuation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Ljwtc/chess/Valuation;

    invoke-direct {v0}, Ljwtc/chess/Valuation;-><init>()V

    sput-object v0, Ljwtc/chess/board/BoardConstants;->m_valuation:Ljwtc/chess/Valuation;

    const/16 v0, 0x8

    new-array v1, v0, [J

    .line 44
    fill-array-data v1, :array_0

    sput-object v1, Ljwtc/chess/board/BoardConstants;->ROW_BITS:[J

    new-array v0, v0, [J

    .line 46
    fill-array-data v0, :array_1

    sput-object v0, Ljwtc/chess/board/BoardConstants;->FILE_BITS:[J

    const/16 v0, 0x40

    new-array v1, v0, [I

    .line 61
    fill-array-data v1, :array_2

    sput-object v1, Ljwtc/chess/board/BoardConstants;->ROW:[I

    new-array v1, v0, [I

    .line 71
    fill-array-data v1, :array_3

    sput-object v1, Ljwtc/chess/board/BoardConstants;->COL:[I

    const/4 v1, 0x2

    new-array v1, v1, [[I

    new-array v2, v0, [I

    .line 83
    fill-array-data v2, :array_4

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ljwtc/chess/board/BoardConstants;->ROW_TURN:[[I

    return-void

    nop

    :array_0
    .array-data 8
        0xff
        0xff00
        0xff0000
        0xff000000L
        0xff00000000L
        0xff0000000000L
        0xff000000000000L
        -0x100000000000000L
    .end array-data

    :array_1
    .array-data 8
        0x101010101010101L
        0x202020202020202L
        0x404040404040404L
        0x808080808080808L
        0x1010101010101010L    # 2.586563270614692E-231
        0x2020202020202020L    # 6.013470016999068E-154
        0x4040404040404040L    # 32.501960784313724
        -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
