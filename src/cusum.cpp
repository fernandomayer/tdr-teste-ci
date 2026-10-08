#include <Rcpp.h>
using namespace Rcpp;

//' Soma acumulada com reinício em zero
//'
//' Calcula a estatística CUSUM unilateral superior de uma série: a soma
//' acumulada dos desvios acima de `k`, reiniciada em zero sempre que fica
//' negativa.
//'
//' @param x Vetor numérico com a série.
//' @param k Valor de referência subtraído de cada observação.
//'
//' @returns Um vetor numérico do comprimento de `x`.
//'
//' @export
//'
//' @examples
//' cusum(c(0.2, 1.4, 0.9, -0.3, 1.8), k = 0.5)
// [[Rcpp::export]]
NumericVector cusum(NumericVector x, double k) {
    int n = x.size();
    NumericVector s(n);
    double acum = 0;
    for (int i = 0; i < n; i++) {
        acum = std::max(0.0, acum + x[i] - k);
        s[i] = acum;
    }
    return s;
}
