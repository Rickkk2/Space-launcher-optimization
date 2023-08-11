function [M_0, c] = Ariane(m_e, V, m_u, k, v_e)

M_0 = (k(1)+1) * m_e(1) + (k(2)+1) * m_e(2) + (k(3)+1) * m_e(3) + m_u;

c1 = v_e(1) * log( ((k(1) + 1)*m_e(1) + (k(2) + 1)*m_e(2) + (k(3) + 1)*m_e(3) + m_u) / (k(1)*m_e(1) + (k(2)+1)*m_e(2) + (k(3)+1)*m_e(3) + m_u));

c2 = v_e(2) * log( ((k(2) + 1)*m_e(2) + (k(3) + 1)*m_e(3) + m_u) / (k(2)*m_e(2) + (k(3)+1)*m_e(3) + m_u));

c3 = v_e(3) * log( ((k(3) + 1)*m_e(3) + m_u)/(k(3)*m_e(3) + m_u) );

c = c1 + c2 + c3 - V;

end