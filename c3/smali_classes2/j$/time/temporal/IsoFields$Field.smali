.class abstract enum Lj$/time/temporal/IsoFields$Field;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalField;


# static fields
.field private static final synthetic $VALUES:[Lj$/time/temporal/IsoFields$Field;

.field public static final enum DAY_OF_QUARTER:Lj$/time/temporal/IsoFields$Field;

.field private static final QUARTER_DAYS:[I

.field public static final enum QUARTER_OF_YEAR:Lj$/time/temporal/IsoFields$Field;

.field public static final enum WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

.field public static final enum WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lj$/time/temporal/IsoFields$Field$1;

    invoke-direct {v0}, Lj$/time/temporal/IsoFields$Field$1;-><init>()V

    sput-object v0, Lj$/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Lj$/time/temporal/IsoFields$Field;

    new-instance v1, Lj$/time/temporal/IsoFields$Field$2;

    invoke-direct {v1}, Lj$/time/temporal/IsoFields$Field$2;-><init>()V

    sput-object v1, Lj$/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Lj$/time/temporal/IsoFields$Field;

    new-instance v2, Lj$/time/temporal/IsoFields$Field$3;

    invoke-direct {v2}, Lj$/time/temporal/IsoFields$Field$3;-><init>()V

    sput-object v2, Lj$/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    new-instance v3, Lj$/time/temporal/IsoFields$Field$4;

    invoke-direct {v3}, Lj$/time/temporal/IsoFields$Field$4;-><init>()V

    sput-object v3, Lj$/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Lj$/time/temporal/IsoFields$Field;

    const/4 v4, 0x4

    new-array v4, v4, [Lj$/time/temporal/IsoFields$Field;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lj$/time/temporal/IsoFields$Field;->$VALUES:[Lj$/time/temporal/IsoFields$Field;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lj$/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static access$100(Lj$/time/temporal/TemporalAccessor;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    sget v0, Lj$/time/temporal/TemporalQueries;->$r8$clinit:I

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/Chronology;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    .line 2
    :goto_0
    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    check-cast p0, Lj$/time/chrono/AbstractChronology;

    invoke-virtual {p0, v0}, Lj$/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "temporal"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$200()[I
    .locals 1

    sget-object v0, Lj$/time/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-object v0
.end method

.method static synthetic access$400(Lj$/time/LocalDate;)Lj$/time/temporal/ValueRange;
    .locals 0

    invoke-static {p0}, Lj$/time/temporal/IsoFields$Field;->getWeekRange(Lj$/time/LocalDate;)Lj$/time/temporal/ValueRange;

    move-result-object p0

    return-object p0
.end method

.method static access$500(Lj$/time/LocalDate;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x7

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v0, v3

    const/4 v3, -0x3

    add-int/2addr v0, v3

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lj$/time/LocalDate;->withDayOfYear()Lj$/time/LocalDate;

    move-result-object p0

    const-wide/16 v0, -0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lj$/time/LocalDate;->plusYears(J)Lj$/time/LocalDate;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lj$/time/temporal/IsoFields$Field;->getWeekRange(Lj$/time/LocalDate;)Lj$/time/temporal/ValueRange;

    move-result-object p0

    invoke-virtual {p0}, Lj$/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_3

    :cond_1
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v2

    const/16 v4, 0x35

    if-ne v1, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    move p0, v2

    :goto_3
    return p0
.end method

.method static synthetic access$600(Lj$/time/LocalDate;)I
    .locals 0

    invoke-static {p0}, Lj$/time/temporal/IsoFields$Field;->getWeekBasedYear(Lj$/time/LocalDate;)I

    move-result p0

    return p0
.end method

.method private static getWeekBasedYear(Lj$/time/LocalDate;)I
    .locals 4

    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sub-int/2addr v1, p0

    const/4 p0, -0x2

    if-ge v1, p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x16b

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v3

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static getWeekRange(Lj$/time/LocalDate;)Lj$/time/temporal/ValueRange;
    .locals 4

    invoke-static {p0}, Lj$/time/temporal/IsoFields$Field;->getWeekBasedYear(Lj$/time/LocalDate;)I

    move-result p0

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v0

    sget-object v1, Lj$/time/DayOfWeek;->THURSDAY:Lj$/time/DayOfWeek;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object v0

    sget-object v1, Lj$/time/DayOfWeek;->WEDNESDAY:Lj$/time/DayOfWeek;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x34

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x35

    :goto_1
    int-to-long v0, p0

    const-wide/16 v2, 0x1

    .line 2
    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/IsoFields$Field;
    .locals 1

    const-class v0, Lj$/time/temporal/IsoFields$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/IsoFields$Field;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/IsoFields$Field;
    .locals 1

    sget-object v0, Lj$/time/temporal/IsoFields$Field;->$VALUES:[Lj$/time/temporal/IsoFields$Field;

    invoke-virtual {v0}, [Lj$/time/temporal/IsoFields$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/IsoFields$Field;

    return-object v0
.end method


# virtual methods
.method public final isDateBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isTimeBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;
    .locals 0

    invoke-interface {p0}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method
