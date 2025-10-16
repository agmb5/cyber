.class public final Lj$/time/LocalDate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/TemporalAccessor;
.implements Lj$/time/chrono/ChronoLocalDate;
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX:Lj$/time/LocalDate;

.field public static final MIN:Lj$/time/LocalDate;


# instance fields
.field private final day:S

.field private final month:S

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, -0x3b9ac9ff

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/LocalDate;->MIN:Lj$/time/LocalDate;

    const v0, 0x3b9ac9ff

    const/16 v1, 0xc

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v0

    sput-object v0, Lj$/time/LocalDate;->MAX:Lj$/time/LocalDate;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/time/LocalDate;->year:I

    int-to-short p1, p2

    iput-short p1, p0, Lj$/time/LocalDate;->month:S

    int-to-short p1, p3

    iput-short p1, p0, Lj$/time/LocalDate;->day:S

    return-void
.end method

.method public static from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;
    .locals 3

    if-eqz p0, :cond_1

    sget v0, Lj$/time/temporal/TemporalQueries;->$r8$clinit:I

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda5;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda5;

    invoke-interface {p0, v0}, Lj$/time/temporal/TemporalAccessor;->query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/LocalDate;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain LocalDate from TemporalAccessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "temporal"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private get0(Lj$/time/temporal/TemporalField;)I
    .locals 3

    sget-object v0, Lj$/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/ChronoField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget p1, p0, Lj$/time/LocalDate;->year:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_1
    iget p1, p0, Lj$/time/LocalDate;->year:I

    return p1

    :pswitch_2
    new-instance p1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v0, "Invalid field \'ProlepticMonth\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    iget-short p1, p0, Lj$/time/LocalDate;->month:S

    return p1

    :pswitch_4
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result p1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v1

    return p1

    :pswitch_5
    new-instance p1, Lj$/time/temporal/UnsupportedTemporalTypeException;

    const-string v0, "Invalid field \'EpochDay\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result p1

    sub-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v1

    return p1

    :pswitch_7
    iget-short p1, p0, Lj$/time/LocalDate;->day:S

    sub-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v1

    return p1

    :pswitch_8
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfWeek()Lj$/time/DayOfWeek;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/DayOfWeek;->getValue()I

    move-result p1

    return p1

    :pswitch_9
    iget p1, p0, Lj$/time/LocalDate;->year:I

    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    return p1

    :pswitch_a
    iget-short p1, p0, Lj$/time/LocalDate;->day:S

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v1

    return p1

    :pswitch_b
    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result p1

    return p1

    :pswitch_c
    iget-short p1, p0, Lj$/time/LocalDate;->day:S

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static of(III)Lj$/time/LocalDate;
    .locals 6

    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    const/16 v0, 0x1c

    if-le p2, v0, :cond_4

    const/16 v3, 0x1f

    const/4 v4, 0x2

    const/16 v5, 0x1d

    if-eq p1, v4, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x1e

    goto :goto_0

    .line 1
    :cond_1
    sget-object v3, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-virtual {v3, v1, v2}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1d

    :cond_2
    move v3, v0

    :goto_0
    if-le p2, v3, :cond_4

    if-ne p2, v5, :cond_3

    new-instance p1, Lj$/time/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid date \'February 29\' as \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a leap year"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Lj$/time/DateTimeException;

    const-string v0, "Invalid date \'"

    .line 2
    invoke-static {v0}, Lj$/util/stream/StreamShape$EnumUnboxingLocalUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v0, Lj$/time/LocalDate;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/LocalDate;-><init>(III)V

    return-object v0
.end method

.method public static ofEpochDay(J)Lj$/time/LocalDate;
    .locals 22

    const-wide/32 v0, 0xafaa8

    add-long v0, p0, v0

    const-wide/16 v2, 0x3c

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    const-wide/32 v4, 0x23ab1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x190

    cmp-long v10, v0, v6

    if-gez v10, :cond_0

    add-long v10, v0, v2

    div-long/2addr v10, v4

    sub-long/2addr v10, v2

    mul-long v12, v10, v8

    neg-long v10, v10

    mul-long v10, v10, v4

    add-long/2addr v0, v10

    goto :goto_0

    :cond_0
    move-wide v12, v6

    :goto_0
    mul-long v10, v0, v8

    const-wide/16 v14, 0x24f

    add-long/2addr v10, v14

    div-long/2addr v10, v4

    const-wide/16 v4, 0x16d

    mul-long v14, v10, v4

    const-wide/16 v16, 0x4

    div-long v18, v10, v16

    add-long v18, v18, v14

    const-wide/16 v14, 0x64

    div-long v20, v10, v14

    sub-long v18, v18, v20

    div-long v20, v10, v8

    add-long v20, v20, v18

    sub-long v18, v0, v20

    cmp-long v20, v18, v6

    if-gez v20, :cond_1

    sub-long/2addr v10, v2

    mul-long v4, v4, v10

    div-long v2, v10, v16

    add-long/2addr v2, v4

    div-long v4, v10, v14

    sub-long/2addr v2, v4

    div-long v4, v10, v8

    add-long/2addr v4, v2

    sub-long v18, v0, v4

    :cond_1
    move-wide/from16 v0, v18

    add-long/2addr v10, v12

    long-to-int v1, v0

    mul-int/lit8 v0, v1, 0x5

    add-int/lit8 v0, v0, 0x2

    div-int/lit16 v0, v0, 0x99

    add-int/lit8 v2, v0, 0x2

    rem-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v3, v0, 0x132

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v0, v0, 0xa

    int-to-long v3, v0

    add-long/2addr v10, v3

    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v10, v11}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v0

    new-instance v3, Lj$/time/LocalDate;

    invoke-direct {v3, v0, v2, v1}, Lj$/time/LocalDate;-><init>(III)V

    return-object v3
.end method


# virtual methods
.method public final compareTo(Lj$/time/chrono/ChronoLocalDate;)I
    .locals 4

    instance-of v0, p1, Lj$/time/LocalDate;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/LocalDate;

    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->compareTo0(Lj$/time/LocalDate;)I

    move-result p1

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    check-cast p1, Lj$/time/LocalDate;

    invoke-virtual {p1}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/chrono/ChronoLocalDate;

    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->compareTo(Lj$/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method

.method final compareTo0(Lj$/time/LocalDate;)I
    .locals 2

    iget v0, p0, Lj$/time/LocalDate;->year:I

    iget v1, p1, Lj$/time/LocalDate;->year:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-short v0, p0, Lj$/time/LocalDate;->month:S

    iget-short v1, p1, Lj$/time/LocalDate;->month:S

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-short v0, p0, Lj$/time/LocalDate;->day:S

    iget-short p1, p1, Lj$/time/LocalDate;->day:S

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/LocalDate;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/LocalDate;

    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->compareTo0(Lj$/time/LocalDate;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final get(Lj$/time/temporal/TemporalField;)I
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lj$/time/LocalDate;->get0(Lj$/time/temporal/TemporalField;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/TemporalQueries;->$default$get(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/TemporalField;)I

    move-result p1

    return p1
.end method

.method public final getDayOfWeek()Lj$/time/DayOfWeek;
    .locals 4

    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const-wide/16 v2, 0x7

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/TemporalQueries;->m$1(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lj$/time/DayOfWeek;->of(I)Lj$/time/DayOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public final getDayOfYear()I
    .locals 2

    .line 1
    iget-short v0, p0, Lj$/time/LocalDate;->month:S

    invoke-static {v0}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lj$/time/Month;->firstDayOfYear(Z)I

    move-result v0

    iget-short v1, p0, Lj$/time/LocalDate;->day:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getLong(Lj$/time/temporal/TemporalField;)J
    .locals 4

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    if-ne p1, v0, :cond_1

    .line 1
    iget p1, p0, Lj$/time/LocalDate;->year:I

    int-to-long v0, p1

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    iget-short p1, p0, Lj$/time/LocalDate;->month:S

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    .line 2
    :cond_1
    invoke-direct {p0, p1}, Lj$/time/LocalDate;->get0(Lj$/time/temporal/TemporalField;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->getFrom(Lj$/time/temporal/TemporalAccessor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getYear()I
    .locals 1

    iget v0, p0, Lj$/time/LocalDate;->year:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lj$/time/LocalDate;->year:I

    iget-short v1, p0, Lj$/time/LocalDate;->month:S

    iget-short v2, p0, Lj$/time/LocalDate;->day:S

    and-int/lit16 v3, v0, -0x800

    shl-int/lit8 v0, v0, 0xb

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    xor-int/2addr v0, v3

    return v0
.end method

.method public final isLeapYear()Z
    .locals 3

    sget-object v0, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    iget v1, p0, Lj$/time/LocalDate;->year:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v0

    return v0
.end method

.method public final isSupported(Lj$/time/temporal/TemporalField;)Z
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->isDateBased()Z

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->isSupportedBy(Lj$/time/temporal/TemporalAccessor;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final plusYears(J)Lj$/time/LocalDate;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    iget v1, p0, Lj$/time/LocalDate;->year:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result p1

    iget-short p2, p0, Lj$/time/LocalDate;->month:S

    iget-short v0, p0, Lj$/time/LocalDate;->day:S

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x6

    if-eq p2, v1, :cond_1

    const/16 v1, 0x9

    if-eq p2, v1, :cond_1

    const/16 v1, 0xb

    if-eq p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x1e

    goto :goto_0

    :cond_2
    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x1d

    goto :goto_0

    :cond_3
    const/16 v1, 0x1c

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    new-instance v1, Lj$/time/LocalDate;

    invoke-direct {v1, p1, p2, v0}, Lj$/time/LocalDate;-><init>(III)V

    return-object v1
.end method

.method public final query(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda5;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda5;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda4;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda4;

    if-eq p1, v0, :cond_5

    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda3;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda3;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda6;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda6;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;

    if-ne p1, v0, :cond_3

    .line 2
    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    goto :goto_0

    .line 3
    :cond_3
    sget-object v0, Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;->INSTANCE:Lj$/time/temporal/TemporalQueries$$ExternalSyntheticLambda2;

    if-ne p1, v0, :cond_4

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    goto :goto_0

    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalQuery;->queryFrom(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    :goto_0
    return-object v1
.end method

.method public final range(Lj$/time/temporal/TemporalField;)Lj$/time/temporal/ValueRange;
    .locals 6

    instance-of v0, p1, Lj$/time/temporal/ChronoField;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoField;->isDateBased()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lj$/time/LocalDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const-wide/16 v4, 0x1

    if-eq v0, v1, :cond_6

    if-eq v0, v3, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/TemporalField;->range()Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    iget p1, p0, Lj$/time/LocalDate;->year:I

    if-gtz p1, :cond_1

    const-wide/32 v0, 0x3b9aca00

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x3b9ac9ff

    .line 2
    :goto_0
    invoke-static {v4, v5, v0, v1}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 3
    :cond_2
    iget-short p1, p0, Lj$/time/LocalDate;->month:S

    invoke-static {p1}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object p1

    .line 4
    sget-object v0, Lj$/time/Month;->FEBRUARY:Lj$/time/Month;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result p1

    if-nez p1, :cond_3

    const-wide/16 v0, 0x4

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x5

    :goto_1
    invoke-static {v4, v5, v0, v1}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x16e

    goto :goto_2

    :cond_5
    const/16 p1, 0x16d

    goto :goto_2

    .line 6
    :cond_6
    iget-short p1, p0, Lj$/time/LocalDate;->month:S

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    const/4 v0, 0x6

    if-eq p1, v0, :cond_7

    const/16 v0, 0x9

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb

    if-eq p1, v0, :cond_7

    const/16 p1, 0x1f

    goto :goto_2

    :cond_7
    const/16 p1, 0x1e

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x1d

    goto :goto_2

    :cond_9
    const/16 p1, 0x1c

    :goto_2
    int-to-long v0, p1

    .line 7
    invoke-static {v4, v5, v0, v1}, Lj$/time/temporal/ValueRange;->of(JJ)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1

    :cond_a
    new-instance v0, Lj$/time/temporal/UnsupportedTemporalTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-interface {p1, p0}, Lj$/time/temporal/TemporalField;->rangeRefinedBy(Lj$/time/temporal/TemporalAccessor;)Lj$/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method

.method public final toEpochDay()J
    .locals 12

    iget v0, p0, Lj$/time/LocalDate;->year:I

    int-to-long v0, v0

    iget-short v2, p0, Lj$/time/LocalDate;->month:S

    int-to-long v2, v2

    const-wide/16 v4, 0x16d

    mul-long v4, v4, v0

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    cmp-long v8, v0, v6

    if-ltz v8, :cond_0

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v0

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v0, v8

    const-wide/16 v8, 0x190

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    const-wide/16 v6, -0x4

    div-long v6, v0, v6

    const-wide/16 v8, -0x64

    div-long v8, v0, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    sub-long v0, v4, v0

    :goto_0
    const-wide/16 v4, 0x16f

    mul-long v4, v4, v2

    const-wide/16 v6, 0x16a

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc

    div-long/2addr v4, v6

    add-long/2addr v4, v0

    iget-short v0, p0, Lj$/time/LocalDate;->day:S

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr v4, v0

    const-wide/16 v0, 0x2

    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    invoke-virtual {p0}, Lj$/time/LocalDate;->isLeapYear()Z

    move-result v2

    if-nez v2, :cond_1

    sub-long/2addr v4, v0

    :cond_1
    const-wide/32 v0, 0xafaa8

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lj$/time/LocalDate;->year:I

    iget-short v1, p0, Lj$/time/LocalDate;->month:S

    iget-short v2, p0, Lj$/time/LocalDate;->day:S

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x3e8

    if-ge v3, v6, :cond_1

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, -0x2710

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x2710

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x270f

    if-le v0, v3, :cond_2

    const/16 v3, 0x2b

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, "-0"

    const-string v3, "-"

    if-ge v1, v5, :cond_3

    move-object v6, v0

    goto :goto_2

    :cond_3
    move-object v6, v3

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge v2, v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v3

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withDayOfYear()Lj$/time/LocalDate;
    .locals 9

    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfYear()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lj$/time/LocalDate;->year:I

    .line 1
    sget-object v2, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v5, v1

    invoke-virtual {v2, v5, v6}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    sget-object v2, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-virtual {v2, v3, v4}, Lj$/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v2

    const/16 v3, 0x1f

    const/4 v4, 0x1

    const/4 v5, 0x6

    invoke-static {v5}, Lj$/time/Month;->of(I)Lj$/time/Month;

    move-result-object v5

    invoke-virtual {v5, v2}, Lj$/time/Month;->firstDayOfYear(Z)I

    move-result v6

    .line 2
    sget-object v7, Lj$/time/Month$1;->$SwitchMap$java$time$Month:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v4, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x4

    if-eq v7, v8, :cond_1

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x1e

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/16 v3, 0x1d

    goto :goto_0

    :cond_3
    const/16 v3, 0x1c

    :goto_0
    add-int/2addr v6, v3

    sub-int/2addr v6, v4

    if-le v1, v6, :cond_4

    .line 3
    invoke-virtual {v5}, Lj$/time/Month;->plus()Lj$/time/Month;

    move-result-object v5

    :cond_4
    invoke-virtual {v5, v2}, Lj$/time/Month;->firstDayOfYear(Z)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v4

    new-instance v2, Lj$/time/LocalDate;

    invoke-virtual {v5}, Lj$/time/Month;->getValue()I

    move-result v3

    invoke-direct {v2, v0, v3, v1}, Lj$/time/LocalDate;-><init>(III)V

    return-object v2
.end method
